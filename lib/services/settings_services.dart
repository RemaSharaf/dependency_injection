import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPreferences;

  RxInt counter = 0.obs;

  Future<SettingServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();

    counter.value = sharedPreferences.getInt("counter") ?? 0;
    return this;
  }

  increase() {
    counter.value++;
    sharedPreferences.setInt("counter", counter.value);
  }
}
