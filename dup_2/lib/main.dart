// Flutter dependencies
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Custom FlutterFlow components and utilities
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'flutter_flow/nav/nav.dart';

// Main application class
void main() async {
  // Initialize Flutter
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  // Initialize theme and set preferred orientations
  await FlutterFlowTheme.initialize();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Run the application
  runApp(const MyApp());
}

// Custom page transitions builder to disable transitions
class NoTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T>? route,
      BuildContext? context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget? child,
      ) {
    return child!;
  }
}

// Main application widget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // Root of the application
  @override
  State<MyApp> createState() => _MyAppState();

  // Static method to access the state from the context
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

// State class for the main application widget
class _MyAppState extends State<MyApp> {
  // Variables for locale, theme mode, app state notifier, and router
  Locale? _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;
  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  // Initialize the state
  @override
  void initState() {
    super.initState();

    // Initialize app state notifier and router
    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
  }

  // Set the locale based on language
  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  // Set the theme mode
  void setThemeMode(ThemeMode mode) => setState(() {
    _themeMode = mode;
    FlutterFlowTheme.saveThemeMode(mode);
  });

  // Build the main application
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // App title and configurations
      title: 'Northern Horizon CVLE',
      localizationsDelegates: const [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],

      // Light theme configuration
      theme: ThemeData(
        brightness: Brightness.light,
        scrollbarTheme: const ScrollbarThemeData(),
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Color(0x55245ffe),
        ),
      ),

      // Dark theme configuration
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scrollbarTheme: const ScrollbarThemeData(),
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Color(0x55245ffe),
        ),
      ),

      // Initial theme mode
      themeMode: ThemeMode.light,

      // Router configuration
      routerConfig: _router,
    );
  }
}
