import 'package:dependency_injection/main.dart';
import 'package:dependency_injection/services/settings_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  SettingServices().sharedPreferences.setString("role", "user");
                  Get.offNamed("/SharedHome");
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(size.width / 3, 45)),
                child: const Text(
                  "User LogIn",
                )),
            ElevatedButton(
                onPressed: () {
                  SettingServices()
                      .sharedPreferences
                      .setString("role", "admin");
                  Get.offNamed("/Admin");
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(size.width / 3, 45)),
                child: const Text(
                  "Admin LogIn",
                )),
          ],
        ),
      ),
    );
  }
}
