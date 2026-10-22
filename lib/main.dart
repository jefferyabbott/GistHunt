import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gisthunt/screens/login_screen.dart';
import 'package:gisthunt/themes/font_size_provider.dart';
import 'package:gisthunt/themes/tab_size_provider.dart';
import 'package:gisthunt/themes/theme_provider.dart';
import 'package:gisthunt/data/export_settings_service.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gisthunt/l10n/app_localizations.dart';

class DeviceType {
  /// Devices whose shortest side is at least 600dp are treated as tablets.
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.shortestSide >= 600;
  }
}

/// Locks phones to portrait; tablets may rotate freely.
class OrientationControlWidget extends StatelessWidget {
  final Widget child;

  const OrientationControlWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (DeviceType.isTablet(context)) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    } else {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }

    return child;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  await dotenv.load(fileName: '.env');

  await ExportSettingsService().init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => FontSizeProvider(prefs)),
        ChangeNotifierProvider(create: (context) => TabSizeProvider(prefs)),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final systemBrightness = MediaQuery.platformBrightnessOf(context);

    return OrientationControlWidget(
      child: MaterialApp(
        title: 'gistHunt',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeProvider>(context).getTheme(systemBrightness),
        home: const LoginScreen(),
      ),
    );
  }
}
