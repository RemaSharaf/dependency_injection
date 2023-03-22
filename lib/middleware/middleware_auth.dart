import 'package:dependency_injection/main.dart';
import 'package:dependency_injection/services/settings_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiddlewareAuth extends GetMiddleware {
  @override
  int? get priority => 2;

  @override
  RouteSettings? redirect(String? route) {
    SettingServices().sharedPreferences.getString("role") == "user"
        ? const RouteSettings(name: "/SharedHome")
        : const RouteSettings(name: "/Admin");
  }
}
