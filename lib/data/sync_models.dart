import 'dart:convert';

enum SyncOperationType { create, update, delete }

enum SyncStatus { pending, syncing, conflict, failed }

class SyncOperation {
  final String id;
  final SyncOperationType type;
  final String gistId; // For offline-created gists, this is a temporary UUID
  final Map<String, dynamic> data; // The gist data to sync
  final DateTime createdAt;
  final DateTime? lastAttempt;
  final int retryCount;
  final SyncStatus status;
  final String? errorMessage;
  final String? conflictRemoteVersion; // Remote version for conflict resolution

  SyncOperation({
    required this.id,
    required this.type,
    required this.gistId,
    required this.data,
    required this.createdAt,
    this.lastAttempt,
    this.retryCount = 0,
    this.status = SyncStatus.pending,
    this.errorMessage,
    this.conflictRemoteVersion,
  });

  SyncOperation copyWith({
    String? id,
    SyncOperationType? type,
    String? gistId,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    DateTime? lastAttempt,
    int? retryCount,
    SyncStatus? status,
    String? errorMessage,
    String? conflictRemoteVersion,
    bool clearErrorMessage = false,
    bool clearConflictRemoteVersion = false,
  }) {
    return SyncOperation(
      id: id ?? this.id,
      type: type ?? this.type,
      gistId: gistId ?? this.gistId,
      data: data ?? this.data,
      createdAt: createdAt ?? this.createdAt,
      lastAttempt: lastAttempt ?? this.lastAttempt,
      retryCount: retryCount ?? this.retryCount,
      status: status ?? this.status,
      errorMessage:
          clearErrorMessage ? null : (errorMessage ?? this.errorMessage),
      conflictRemoteVersion: clearConflictRemoteVersion
          ? null
          : (conflictRemoteVersion ?? this.conflictRemoteVersion),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type.name,
      'gistId': gistId,
      'data': data,
      'createdAt': createdAt.toIso8601String(),
      'lastAttempt': lastAttempt?.toIso8601String(),
      'retryCount': retryCount,
      'status': status.name,
      'errorMessage': errorMessage,
      'conflictRemoteVersion': conflictRemoteVersion,
    };
  }

  factory SyncOperation.fromJson(Map<String, dynamic> json) {
    return SyncOperation(
      id: json['id'] as String,
      type: SyncOperationType.values.byName(json['type'] as String),
      gistId: json['gistId'] as String,
      data: json['data'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastAttempt: json['lastAttempt'] != null
          ? DateTime.parse(json['lastAttempt'] as String)
          : null,
      retryCount: json['retryCount'] as int? ?? 0,
      status: SyncStatus.values.byName(json['status'] as String? ?? 'pending'),
      errorMessage: json['errorMessage'] as String?,
      conflictRemoteVersion: json['conflictRemoteVersion'] as String?,
    );
  }

  String toJsonString() => jsonEncode(toJson());

  factory SyncOperation.fromJsonString(String jsonString) {
    return SyncOperation.fromJson(jsonDecode(jsonString) as Map<String, dynamic>);
  }
}

class ConflictInfo {
  final SyncOperation localOperation;
  final Map<String, dynamic> remoteGist;
  final DateTime localTimestamp;
  final DateTime remoteTimestamp;

  ConflictInfo({
    required this.localOperation,
    required this.remoteGist,
    required this.localTimestamp,
    required this.remoteTimestamp,
  });
}
