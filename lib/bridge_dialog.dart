import 'package:bridge_me/bridge_navigate.dart';
import 'package:flutter/material.dart';

class BridgeDialog {
  static show(AlertDialog alertDialog) async {
    return await showDialog(
      context: BridgeContext,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
