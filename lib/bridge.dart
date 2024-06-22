import 'package:flutter/material.dart';

class Bridge extends StatefulWidget {
  static final GlobalKey<NavigatorState> navigator =
      GlobalKey<NavigatorState>();

  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  final Map<Type, Action<Intent>>? actions;
  final Widget Function(BuildContext, Widget?)? builder;
  final bool checkerboardOffscreenLayers;
  final bool checkerboardRasterCacheImages;
  final ThemeData? darkTheme;
  final Color? color;
  final bool debugShowCheckedModeBanner;
  final bool debugShowMaterialGrid;
  final ThemeData? highContrastDarkTheme;
  final ThemeData? highContrastTheme;
  final Widget? home;
  final String? initialRoute;
  final Locale? locale;
  final Locale? Function(List<Locale>?, Iterable<Locale>)?
      localeListResolutionCallback;
  final Locale? Function(Locale?, Iterable<Locale>)? localeResolutionCallback;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final List<NavigatorObserver> navigatorObservers;
  final List<Route<dynamic>> Function(String)? onGenerateInitialRoutes;
  final Route<dynamic>? Function(RouteSettings)? onGenerateRoute;
  final String Function(BuildContext)? onGenerateTitle;
  final bool Function(NavigationNotification)? onNavigationNotification;
  final Route<dynamic>? Function(RouteSettings)? onUnknownRoute;
  final String? restorationScopeId;
  final Map<String, Widget Function(BuildContext)> routes;
  final ScrollBehavior? scrollBehavior;
  final Map<ShortcutActivator, Intent>? shortcuts;
  final bool showPerformanceOverlay;
  final bool showSemanticsDebugger;
  final Iterable<Locale> supportedLocales;
  final ThemeData? theme;
  final Curve themeAnimationCurve;
  final Duration themeAnimationDuration;
  final AnimationStyle? themeAnimationStyle;
  final ThemeMode? themeMode;
  final String title;
  final void Function(AppLifecycleState state)? didChangeAppLifecycleState;
  final void Function(BuildContext context)? initState;

  const Bridge({
    super.key,
    this.checkerboardOffscreenLayers = false,
    this.debugShowCheckedModeBanner = false,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.routes = const <String, WidgetBuilder>{},
    this.showPerformanceOverlay = false,
    this.showSemanticsDebugger = false,
    this.actions,
    this.builder,
    this.checkerboardRasterCacheImages = false,
    this.darkTheme,
    this.color,
    this.debugShowMaterialGrid = false,
    this.highContrastDarkTheme,
    this.highContrastTheme,
    this.home,
    this.initialRoute,
    this.locale,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.localizationsDelegates,
    this.onGenerateInitialRoutes,
    this.onGenerateRoute,
    this.onGenerateTitle,
    this.onNavigationNotification,
    this.onUnknownRoute,
    this.restorationScopeId,
    this.scrollBehavior,
    this.shortcuts,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.themeAnimationCurve = Curves.linear,
    this.themeAnimationDuration = kThemeAnimationDuration,
    this.themeMode = ThemeMode.system,
    this.title = "",
    this.theme,
    this.themeAnimationStyle,
    this.didChangeAppLifecycleState,
    this.initState,
  });

  @override
  State<Bridge> createState() => _BridgeState();
}

class _BridgeState extends State<Bridge> with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (widget.didChangeAppLifecycleState != null) {
      widget.didChangeAppLifecycleState!(state);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (widget.initState != null) {
      widget.initState!(context);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Bridge.navigator,
      scaffoldMessengerKey: Bridge.scaffoldMessengerKey,
      actions: widget.actions,
      builder: widget.builder,
      checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
      checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
      color: widget.color,
      darkTheme: widget.darkTheme,
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
      debugShowMaterialGrid: widget.debugShowCheckedModeBanner,
      highContrastDarkTheme: widget.highContrastDarkTheme,
      highContrastTheme: widget.highContrastTheme,
      home: widget.home,
      initialRoute: widget.initialRoute,
      locale: widget.locale,
      localeListResolutionCallback: widget.localeListResolutionCallback,
      localeResolutionCallback: widget.localeResolutionCallback,
      localizationsDelegates: widget.localizationsDelegates,
      navigatorObservers: widget.navigatorObservers,
      onGenerateInitialRoutes: widget.onGenerateInitialRoutes,
      onGenerateRoute: widget.onGenerateRoute,
      onGenerateTitle: widget.onGenerateTitle,
      onNavigationNotification: widget.onNavigationNotification,
      onUnknownRoute: widget.onUnknownRoute,
      restorationScopeId: widget.restorationScopeId,
      routes: widget.routes,
      scrollBehavior: widget.scrollBehavior,
      shortcuts: widget.shortcuts,
      showPerformanceOverlay: widget.showPerformanceOverlay,
      showSemanticsDebugger: widget.showSemanticsDebugger,
      supportedLocales: widget.supportedLocales,
      theme: widget.theme,
      themeAnimationCurve: widget.themeAnimationCurve,
      themeAnimationDuration: widget.themeAnimationDuration,
      themeAnimationStyle: widget.themeAnimationStyle,
      themeMode: widget.themeMode,
      title: widget.title,
    );
  }
}
