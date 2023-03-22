import 'package:dependency_injection/services/settings_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends GetView<SettingServices> {
  const Counter({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingServices>(builder: (c) {
              return Text("${c.counter}");
            }),
            ElevatedButton(
                onPressed: () {
                  controller.increase();
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(size.width / 3, 45)),
                child: const Text(
                  "counter increase",
                )),
            ElevatedButton(
                onPressed: () {
                  controller.sharedPreferences.clear();
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(size.width / 3, 45)),
                child: const Text(
                  "Clear",
                ))
          ],
        ),
      ),
    );
  }
}
