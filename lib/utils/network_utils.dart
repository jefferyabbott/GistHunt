/// Whether [error] looks like a connectivity failure rather than an API error.
///
/// On macOS, `package:http` surfaces offline failures as `ClientException`
/// instead of `SocketException`, so both are matched by name.
bool isNetworkError(Object error) {
  final message = error.toString();
  return message.contains('SocketException') ||
      message.contains('ClientException') ||
      message.contains('Failed host lookup');
}
