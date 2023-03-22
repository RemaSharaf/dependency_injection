import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiddlewareSuper extends GetMiddleware {
  bool myVar = true;
  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (myVar) {
      return const RouteSettings(name: "/Super");
    }
  }
}
