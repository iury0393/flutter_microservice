import 'package:micro_dependency/micro_dependency.dart';

abstract class SubApp {
  void registerSingletons();
  void registerListeners();
  List<RoutesCore> getRoutes();
  String get routePrefix;
}
