import 'package:micro_dependency/micro_dependency.dart';

class MicroRoutes {
  static List<RoutesCore> getRoutes({String? routePrefix}) {
    return [
      RoutesCore(
        routeName: '/home',
        page: page,
        routeNamePrefix: routePrefix,
      ),
      RoutesCore(
        routeName: '/18',
        page: page,
        routeNamePrefix: routePrefix,
      ),
    ];
  }
}
