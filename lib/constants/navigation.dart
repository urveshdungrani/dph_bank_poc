import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

enum RouteTypes { push, resetTo, pop, replace }

void route(RouteTypes type, [path, arguments]) {
  switch (type) {
    case RouteTypes.push:
      navigatorKey.currentState?.pushNamed(path, arguments: arguments ?? {});
      break;
    case RouteTypes.replace:
      navigatorKey.currentState?.pushReplacementNamed(path, arguments: arguments ?? {});
      break;
    case RouteTypes.resetTo:
      navigatorKey.currentState?.pushNamedAndRemoveUntil(path, (Route<dynamic> route) => false);
      break;
    case RouteTypes.pop:
      if (navigatorKey.currentState?.canPop() == true) {
        navigatorKey.currentState?.pop();
      } else {
        // Provider.of<AppProvider>(navigatorKey.currentState!.overlay!.context, listen: false).setJwt('');
        SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop', true);
      }
      break;
    default:
      break;
  }
}
