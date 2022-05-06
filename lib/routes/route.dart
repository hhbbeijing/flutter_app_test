import 'package:fluro/fluro.dart';
import 'package:flutter_app_test/routes/route_handles.dart';

class Routes {
  static String page_main = "/";
  static String page_a = "/a";

  static void configureRoutes(FluroRouter router) {
    router.define(page_main, handler: mainHandler);
    router.define(page_a, handler: aHandler);
  }
}