import 'dart:convert';
import 'package:flutter/material.dart';
import '../data/sync_queue_service.dart';
import '../data/sync_models.dart';
import 'package:gisthunt/l10n/app_localizations.dart';

class ConflictResolutionScreen extends StatefulWidget {
  final SyncQueueService syncQueueService;
  final VoidCallback onResolved;

  const ConflictResolutionScreen({
    super.key,
    required this.syncQueueService,
    required this.onResolved,
  });

  @override
  State<ConflictResolutionScreen> createState() =>
      _ConflictResolutionScreenState();
}

class _ConflictResolutionScreenState extends State<ConflictResolutionScreen> {
  List<SyncOperation> _conflicts = [];
  int _currentConflictIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadConflicts();
  }

  void _loadConflicts() {
    setState(() {
      _conflicts = widget.syncQueueService.queue
          .where((op) => op.status == SyncStatus.conflict)
          .toList();
    });
  }

  Map<String, dynamic>? _getRemoteGist(SyncOperation operation) {
    if (operation.conflictRemoteVersion != null) {
      try {
        return jsonDecode(operation.conflictRemoteVersion!)
            as Map<String, dynamic>;
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    if (_conflicts.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.conflictResolution)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle, size: 64, color: Colors.green),
              const SizedBox(height: 16),
              Text(AppLocalizations.of(context)!.allConflictsResolved,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      );
    }

    final currentConflict = _conflicts[_currentConflictIndex];
    final remoteGist = _getRemoteGist(currentConflict);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.conflictProgress(_currentConflictIndex + 1, _conflicts.length)),
        actions: [
          if (_conflicts.length > 1)
            IconButton(
              icon: const Icon(Icons.skip_previous),
              onPressed: _currentConflictIndex > 0
                  ? () {
                      setState(() {
                        _currentConflictIndex--;
                      });
                    }
                  : null,
              tooltip: AppLocalizations.of(context)!.previousConflict,
            ),
          if (_conflicts.length > 1)
            IconButton(
              icon: const Icon(Icons.skip_next),
              onPressed: _currentConflictIndex < _conflicts.length - 1
                  ? () {
                      setState(() {
                        _currentConflictIndex++;
                      });
                    }
                  : null,
              tooltip: AppLocalizations.of(context)!.nextConflict,
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Conflict explanation
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Row(
                children: [
                  const Icon(Icons.warning_amber, color: Colors.orange),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.conflictExplanation,
                      style: TextStyle(color: Colors.orange.shade900),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            Text(
              AppLocalizations.of(context)!.conflictGistLabel('${currentConflict.data['description'] ?? currentConflict.gistId}'),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),

            // Side-by-side comparison
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _buildVersionCard(
                    title: AppLocalizations.of(context)!.yourLocalVersion,
                    timestamp: currentConflict.createdAt,
                    data: currentConflict.data,
                    isLocal: true,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildVersionCard(
                    title: AppLocalizations.of(context)!.remoteVersionGitHub,
                    timestamp: DateTime.tryParse(
                            remoteGist?['updated_at'] as String? ?? ''),
                    data: remoteGist ?? {},
                    isLocal: false,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Resolution options
            Text(
              AppLocalizations.of(context)!.chooseResolution,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),

            _buildResolutionButton(
              icon: Icons.phone_android,
              label: AppLocalizations.of(context)!.keepMyLocalChanges,
              description: AppLocalizations.of(context)!.keepMyLocalChangesDescription,
              color: Colors.blue,
              onPressed: () => _resolveKeepLocal(currentConflict),
            ),
            const SizedBox(height: 12),

            _buildResolutionButton(
              icon: Icons.cloud,
              label: AppLocalizations.of(context)!.keepRemoteVersion,
              description: AppLocalizations.of(context)!.keepRemoteVersionDescription,
              color: Colors.green,
              onPressed: () => _resolveKeepRemote(currentConflict),
            ),
            const SizedBox(height: 12),

            _buildResolutionButton(
              icon: Icons.delete_outline,
              label: AppLocalizations.of(context)!.discardLocalChanges,
              description: AppLocalizations.of(context)!.discardLocalChangesDescription,
              color: Colors.red,
              onPressed: () => _discardChanges(currentConflict),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVersionCard({
    required String title,
    required DateTime? timestamp,
    required Map<String, dynamic> data,
    required bool isLocal,
  }) {
    final files = data['files'] as Map<String, dynamic>? ?? {};

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isLocal ? Colors.blue.shade50 : Colors.green.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isLocal ? Colors.blue.shade200 : Colors.green.shade200,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                isLocal ? Icons.phone_android : Icons.cloud,
                size: 16,
                color: isLocal ? Colors.blue : Colors.green,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isLocal ? Colors.blue.shade900 : Colors.green.shade900,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            timestamp == null
                ? AppLocalizations.of(context)!.modifiedUnknown
                : AppLocalizations.of(context)!.modifiedAt(_formatTimestamp(timestamp)),
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 12),
          Text(AppLocalizations.of(context)!.filesLabel, style: const TextStyle(fontWeight: FontWeight.w500)),
          const SizedBox(height: 4),
          ...files.entries.take(5).map((entry) {
            final fileData = entry.value as Map<String, dynamic>?;
            // Local updates key renamed files by their old name and mark
            // deleted files with null.
            final isDeleted = isLocal && fileData == null;
            final newName = fileData?['filename'] as String?;
            final fileName = isLocal && newName != null && newName != entry.key
                ? '${entry.key} → $newName'
                : entry.key;
            final contentLength = isLocal
                ? (fileData?['content'] as String?)?.length ?? 0
                : (fileData?['size'] as int?) ?? 0;

            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  const Icon(Icons.description_outlined, size: 14),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      fileName,
                      style: const TextStyle(fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    isDeleted
                        ? AppLocalizations.of(context)!.fileDeletedLabel
                        : AppLocalizations.of(context)!.charCount(contentLength),
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            );
          }),
          if (files.length > 5)
            Text(
              AppLocalizations.of(context)!.moreFiles(files.length - 5),
              style: TextStyle(
                fontSize: 11,
                fontStyle: FontStyle.italic,
                color: Colors.grey.shade600,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildResolutionButton({
    required IconData icon,
    required String label,
    required String description,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Material(
      color: color.withAlpha(26),
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(icon, color: color, size: 32),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: color),
            ],
          ),
        ),
      ),
    );
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inMinutes < 1) {
      return AppLocalizations.of(context)!.justNow;
    } else if (difference.inHours < 1) {
      return AppLocalizations.of(context)!.minutesAgo(difference.inMinutes);
    } else if (difference.inDays < 1) {
      return AppLocalizations.of(context)!.hoursAgo(difference.inHours);
    } else {
      return AppLocalizations.of(context)!.daysAgo(difference.inDays);
    }
  }

  Future<void> _resolveKeepLocal(SyncOperation conflict) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.keepLocalChangesTitle),
        content: Text(AppLocalizations.of(context)!.keepLocalChangesMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: Text(AppLocalizations.of(context)!.keepLocal),
          ),
        ],
      ),
    );

    if (confirm == true) {
      await widget.syncQueueService.resolveConflictKeepLocal(conflict.id);
      _handleResolutionComplete();
    }
  }

  Future<void> _resolveKeepRemote(SyncOperation conflict) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.keepRemoteVersionTitle),
        content: Text(AppLocalizations.of(context)!.keepRemoteVersionMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.green),
            child: Text(AppLocalizations.of(context)!.keepRemote),
          ),
        ],
      ),
    );

    if (confirm == true) {
      await widget.syncQueueService.resolveConflictKeepRemote(conflict.id);
      _handleResolutionComplete();
    }
  }

  Future<void> _discardChanges(SyncOperation conflict) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.discardChangesTitle),
        content: Text(AppLocalizations.of(context)!.discardChangesMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text(AppLocalizations.of(context)!.discard),
          ),
        ],
      ),
    );

    if (confirm == true) {
      await widget.syncQueueService.removeOperation(conflict.id);
      _handleResolutionComplete();
    }
  }

  void _handleResolutionComplete() {
    if (!mounted) return;
    _loadConflicts();
    if (_conflicts.isEmpty) {
      widget.onResolved();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.allConflictsResolved),
          backgroundColor: Colors.green,
        ),
      );
    } else if (_currentConflictIndex >= _conflicts.length) {
      setState(() {
        _currentConflictIndex = _conflicts.length - 1;
      });
    }
  }
}
