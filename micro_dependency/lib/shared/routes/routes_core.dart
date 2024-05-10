import 'package:flutter/material.dart';

class RoutesCore {
  String routeName;
  String? routeNamePrefix;
  Widget Function(Object? args, Map? queryParameters) page;

  RoutesCore({
    required this.routeName,
    required this.page,
    this.routeNamePrefix,
  });

  Widget Function(BuildContext context, Object? args, Map? queryParameters) get routePage =>
      (context, args, queryParameters) => page(args, queryParameters);
}
