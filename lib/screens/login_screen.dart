import 'dart:convert';
import 'dart:async';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gisthunt/l10n/app_localizations.dart';
import '../components/animated_dots.dart';
import 'gists_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final storage = const FlutterSecureStorage();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _checkExistingToken();
  }

  Future<void> _checkExistingToken() async {
    final token = await storage.read(key: 'github_token');
    if (token != null && mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const GistsScreen()),
      );
    }
  }

  void _signInWithGitHub() {
    setState(() {
      isLoading = true;
    });

    // Defer auth to the next frame so the loading state renders first.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _performGitHubAuth();
    });
  }

  Future<void> _performGitHubAuth() async {
    try {
      final clientId = dotenv.env['GITHUB_CLIENT_ID'];
      final clientSecret = dotenv.env['GITHUB_CLIENT_SECRET'];

      if (clientId == null || clientSecret == null) {
        throw Exception('GitHub credentials not found in environment');
      }

      final state = DateTime.now().millisecondsSinceEpoch.toString();

      final authUrl = Uri.https(
        'github.com',
        '/login/oauth/authorize',
        {
          'client_id': clientId,
          'redirect_uri': 'gisthunt://callback',
          'scope': 'gist user',
          'state': state,
          'allow_signup': 'true',
        },
      ).toString();

      final result = await FlutterWebAuth2.authenticate(
        url: authUrl,
        callbackUrlScheme: 'gisthunt',
      );

      final uri = Uri.parse(result);
      final code = uri.queryParameters['code'];
      final returnedState = uri.queryParameters['state'];

      if (returnedState != state) {
        throw Exception('Invalid state parameter');
      }

      if (code != null) {
        final tokenResponse = await http.post(
          Uri.parse('https://github.com/login/oauth/access_token'),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            'client_id': clientId,
            'client_secret': clientSecret,
            'code': code,
            'redirect_uri': 'gisthunt://callback',
          }),
        );

        if (tokenResponse.statusCode != 200) {
          throw Exception(
            'Failed to exchange code for token: ${tokenResponse.statusCode}',
          );
        }

        final tokenData = jsonDecode(tokenResponse.body);
        final accessToken = tokenData['access_token'];

        if (accessToken != null) {
          await storage.write(key: 'github_token', value: accessToken);
          if (mounted) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const GistsScreen()),
            );
          }
        } else {
          throw Exception('No access token received');
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorSigningIn('$e'))),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'GistHunt',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            AnimatedScale(
              scale: isLoading ? 0.95 : 1.0,
              duration: const Duration(milliseconds: 100),
              child: ElevatedButton(
                onPressed: isLoading ? null : _signInWithGitHub,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  elevation: isLoading ? 0 : 2,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (isLoading)
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: AnimatedDots(
                          color: Colors.white,
                          size: 6,
                        ),
                      )
                    else
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.login,
                          color: Colors.white,
                        ),
                      ),
                    Text(
                      isLoading
                          ? AppLocalizations.of(context)!.connectingToGitHub
                          : AppLocalizations.of(context)!.signIn,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
