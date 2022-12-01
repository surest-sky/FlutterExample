import 'package:app/views/AppPage.dart';
import 'package:app/views/ColumnPage.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, StatefulWidget Function(BuildContext context, RouteSettings settings)> routes = {
    'columnPage': (context, settings) => const ColumnPage(),
    'appPage': (context, settings) => const AppPage(),
  };

   static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    String routeName = routeBeforeHook(settings);
    return MaterialPageRoute(builder: (context) {
      switch (routeName) {
        case 'columnPage':
          return const ColumnPage();
        case 'appPage':
        default:
          return const AppPage();
      }
    });
  }

  static String routeBeforeHook(RouteSettings settings) {
    return settings.name ?? "appPage";
  }
}
