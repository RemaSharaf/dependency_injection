import 'package:dependency_injection/services/settings_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  SettingServices services = Get.find();
  // Locale intialLang =
  //     (SettingServices().sharedPreferences.getString("lang")) == "ar"
  //         ? const Locale("ar")
  //         : const Locale("en");
  void changeLan(String code) {
    Locale locale = Locale(code);
    // SettingServices().sharedPreferences.setString("lang", code);
    Get.updateLocale(locale);
  }
}
