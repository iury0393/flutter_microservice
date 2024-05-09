import 'package:micro_core/src/shared/routes/micro_routes.dart';
import 'package:micro_dependency/micro_dependency.dart';

GetIt getIt = GetIt.instance;

class MicroCore {
  String get routePrefix => '/microCore';

  List<RoutesCore> getRoutes() {
    return MicroRoutes.getRoutes(routePrefix: routePrefix);
  }
}
