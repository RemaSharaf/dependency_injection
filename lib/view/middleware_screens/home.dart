import 'package:dependency_injection/main.dart';
import 'package:dependency_injection/services/settings_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharedHome extends StatelessWidget {
  const SharedHome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("User"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                   SettingServices().sharedPreferences.clear();
                  Get.offAllNamed("/LogIn");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(size.width / 3, 45)),
                child: const Text(
                  "LogOut",
                )),
          ],
        ),
      ),
    );
  }
}
