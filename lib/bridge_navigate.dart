import 'package:bridge_me/bridge.dart';
import 'package:flutter/material.dart';

BuildContext BridgeContext = Bridge.navigator.currentContext ??
    Bridge.scaffoldMessengerKey.currentContext!;

MaterialPageRoute _routeMe(Widget screen) {
  return MaterialPageRoute(builder: (context) {
    return screen;
  });
}

class BridgeNavigate {
  static push(Widget screen) async {
    return await Bridge.navigator.currentState!.push(_routeMe(screen));
  }

  static popUntil(bool Function(Route<dynamic>) predicate) {
    Bridge.navigator.currentState!.popUntil(predicate);
  }

  static bool canPop() {
    return Bridge.navigator.currentState!.canPop();
  }

  static pop() {
    canPop() ? Bridge.navigator.currentState!.pop() : null;
  }

  static pushNamed(String routeName, {Object? arguments}) {
    Bridge.navigator.currentState!.pushNamed(routeName, arguments: arguments);
  }

  static pushReplacementNamed(
    String routeName, {
    Object? result,
    Object? arguments,
  }) {
    Bridge.navigator.currentState!
        .pushReplacementNamed(routeName, arguments: arguments, result: result);
  }

  static popAndPushNamed(String routeName,
      {Object? result, Object? arguments}) {
    Bridge.navigator.currentState!
        .popAndPushNamed(routeName, result: result, arguments: arguments);
  }

  static pushNamedAndRemoveUntil(
    String newRouteName,
    bool Function(Route<dynamic>) predicate, {
    Object? arguments,
  }) {
    Bridge.navigator.currentState!
        .pushNamedAndRemoveUntil(newRouteName, predicate, arguments: arguments);
  }
}
