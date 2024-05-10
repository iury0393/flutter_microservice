import 'package:flutter/material.dart';
import 'package:micro_dependency/micro_dependency.dart';

mixin BaseApp {
  List<SubApp> get microApps;
  List<RoutesCore> get baseRoutes;
  final List<RoutesCore> routes = [];

  void registerGlobalInjections();
  void registerGlobalListeners();

  void _registerRouters() {
    if (baseRoutes.isNotEmpty) routes.addAll(baseRoutes);
    if (microApps.isNotEmpty) {
      for (SubApp microapp in microApps) {
        routes.addAll(microapp.getRoutes());
      }
    }
  }

  void _registerInjection() {
    if (microApps.isNotEmpty) {
      for (SubApp microapp in microApps) {
        microapp.registerSingletons();
      }
    }
  }

  void _registerListeners() {
    if (microApps.isNotEmpty) {
      for (SubApp microapp in microApps) {
        microapp.registerListeners();
      }
    }
  }

  void registerMicroappConfigs() {
    registerGlobalInjections();
    registerGlobalListeners();
    _registerInjection();
    _registerListeners();
    _registerRouters();
  }

  Route<dynamic>? generateRoute(RouteSettings settings) {
    var routerName = settings.name;
    var routerArgs = settings.arguments;

    var uri = Uri.parse(settings.name ?? '');
    var queryParameters = uri.queryParameters;
    var list = routes
        .where((element) => ((element.routeNamePrefix ?? '') + element.routeName) == routerName);

    if (list.isEmpty) return null;

    var navigateTo = list.first;

    return MaterialPageRoute(
      settings: settings,
      builder: (context) => navigateTo.routePage(context, routerArgs, queryParameters),
    );
  }
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
