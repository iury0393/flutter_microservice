import 'package:micro_core/src/waifu/presentation/page/others/others_page.dart';
import 'package:micro_core/src/waifu/presentation/page/waifu/waifu_page.dart';
import 'package:micro_dependency/micro_dependency.dart';

class MicroRoutes {
  static List<RoutesCore> getRoutes({String? routePrefix}) {
    return [
      RoutesCore(
        routeName: '/waifu',
        page: (args, queryParameters) => const WaifuPage(),
        routeNamePrefix: routePrefix,
      ),
      RoutesCore(
        routeName: '/others',
        page: (args, queryParameters) => const OthersPage(),
        routeNamePrefix: routePrefix,
      ),
    ];
  }
}
