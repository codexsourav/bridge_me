import 'package:bridge_me/main.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {}

Bridge startApp() {
  return Bridge(
    didChangeAppLifecycleState: (AppLifecycleState state) {
      print(state);
    },
    initState: (context) {
      // Hire Write InitState Code
    },
    home: Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              BridgeNavigate.push(ScreenName());
            },
            child: Text("Next Screen"),
          ),
          ElevatedButton(
            onPressed: () {
              BridgeSnackbar.show(SnackBar(content: Text("Ok")));
            },
            child: Text("Show SnackBar"),
          ),
          ElevatedButton(
            onPressed: () {
              BridgeDialog.show(AlertDialog());
            },
            child: Text("Show AlertDilog"),
          ),
          ElevatedButton(
            onPressed: () {
              // No Nedd Context To Use Provider
              BridgeProvider.of<DemoProvider>().print();
            },
            child: Text("Call Proovider"),
          ),
        ],
      ),
    ),
  );
}
