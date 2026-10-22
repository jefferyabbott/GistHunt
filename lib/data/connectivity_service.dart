import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;

class ConnectivityService {
  static final ConnectivityService _instance = ConnectivityService._internal();
  factory ConnectivityService() => _instance;
  ConnectivityService._internal();

  final Connectivity _connectivity = Connectivity();
  final StreamController<bool> _connectionStatusController =
      StreamController<bool>.broadcast();

  Stream<bool> get connectionStream => _connectionStatusController.stream;
  bool _isConnected = true;
  bool get isConnected => _isConnected;

  StreamSubscription<List<ConnectivityResult>>? _subscription;

  Future<void> initialize() async {
    _isConnected = await checkConnection();
    _connectionStatusController.add(_isConnected);

    _subscription = _connectivity.onConnectivityChanged.listen((results) async {
      final hasConnection = await checkConnection();
      if (hasConnection != _isConnected) {
        _isConnected = hasConnection;
        _connectionStatusController.add(_isConnected);
      }
    });

    // Recheck after a short delay: at launch-at-login the network may not be up yet.
    Future.delayed(const Duration(seconds: 3), () async {
      final hasConnection = await checkConnection();
      if (hasConnection != _isConnected) {
        _isConnected = hasConnection;
        _connectionStatusController.add(_isConnected);
      }
    });
  }

  /// Force a connectivity recheck
  Future<void> recheckConnection() async {
    final hasConnection = await checkConnection();
    if (hasConnection != _isConnected) {
      _isConnected = hasConnection;
      _connectionStatusController.add(_isConnected);
    }
  }

  Future<bool> checkConnection() async {
    final results = await _connectivity.checkConnectivity();

    if (results.contains(ConnectivityResult.none)) {
      return false;
    }

    // A network interface doesn't guarantee internet access, so verify by pinging GitHub.
    try {
      final response = await http
          .head(Uri.parse('https://api.github.com'))
          .timeout(const Duration(seconds: 5));
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  void dispose() {
    _subscription?.cancel();
    _connectionStatusController.close();
  }
}
