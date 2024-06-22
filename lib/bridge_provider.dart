import 'package:bridge_me/bridge_navigate.dart';
import 'package:provider/provider.dart';

class BridgeProvider {
  static T of<T>({bool listen = true}) {
    return Provider.of<T>(BridgeContext, listen: listen);
  }
}
