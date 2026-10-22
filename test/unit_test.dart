import 'package:flutter_test/flutter_test.dart';
import 'package:gisthunt/data/sync_models.dart';
import 'package:gisthunt/utils/language_utils.dart';
import 'package:gisthunt/utils/network_utils.dart';

void main() {
  group('LanguageUtils', () {
    test('maps file extensions to highlight languages', () {
      expect(LanguageUtils.getLanguageFromFilename('main.py'), 'python');
      expect(LanguageUtils.getLanguageFromFilename('App.TSX'), 'typescript');
      expect(LanguageUtils.getLanguageFromFilename('README.md'), 'markdown');
      expect(LanguageUtils.getLanguageFromFilename('notes.unknown'), 'plaintext');
    });

    test('formats display names', () {
      expect(LanguageUtils.getDisplayName('csharp'), 'C#');
      expect(LanguageUtils.getDisplayName('dart'), 'Dart');
      expect(LanguageUtils.getDisplayName(''), 'Plain Text');
    });
  });

  group('SyncOperation', () {
    test('round-trips through JSON', () {
      final op = SyncOperation(
        id: 'op-1',
        type: SyncOperationType.update,
        gistId: 'abc123',
        data: {'description': 'hello'},
        createdAt: DateTime.utc(2024, 1, 2, 3, 4, 5),
        retryCount: 2,
        status: SyncStatus.failed,
        errorMessage: 'timeout',
      );

      final restored = SyncOperation.fromJsonString(op.toJsonString());

      expect(restored.id, op.id);
      expect(restored.type, op.type);
      expect(restored.gistId, op.gistId);
      expect(restored.data, op.data);
      expect(restored.createdAt, op.createdAt);
      expect(restored.lastAttempt, isNull);
      expect(restored.retryCount, 2);
      expect(restored.status, SyncStatus.failed);
      expect(restored.errorMessage, 'timeout');
    });

    test('copyWith can clear nullable fields', () {
      final op = SyncOperation(
        id: 'op-1',
        type: SyncOperationType.update,
        gistId: 'abc123',
        data: const {},
        createdAt: DateTime.utc(2024),
        status: SyncStatus.conflict,
        errorMessage: 'failed',
        conflictRemoteVersion: '{"id":"abc123"}',
      );

      final kept = op.copyWith(status: SyncStatus.pending);
      expect(kept.errorMessage, 'failed');
      expect(kept.conflictRemoteVersion, isNotNull);

      final cleared = op.copyWith(
        status: SyncStatus.pending,
        clearErrorMessage: true,
        clearConflictRemoteVersion: true,
      );
      expect(cleared.errorMessage, isNull);
      expect(cleared.conflictRemoteVersion, isNull);
    });
  });

  group('isNetworkError', () {
    test('recognizes connectivity failures', () {
      expect(isNetworkError(Exception('SocketException: Connection refused')), isTrue);
      expect(isNetworkError(Exception('ClientException: Connection failed')), isTrue);
      expect(isNetworkError(Exception('Failed host lookup: api.github.com')), isTrue);
    });

    test('ignores API errors', () {
      expect(isNetworkError(Exception('Failed to update gist: 422')), isFalse);
    });
  });
}
