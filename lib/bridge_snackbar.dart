import 'package:bridge_me/bridge.dart';
import 'package:flutter/material.dart';

class BridgeSnackbar {
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> show(
      SnackBar snackBar) {
    return Bridge.scaffoldMessengerKey.currentState!.showSnackBar(snackBar);
  }

  static void hide(SnackBar snackBar) {
    Bridge.scaffoldMessengerKey.currentState!.hideCurrentSnackBar();
  }
}
