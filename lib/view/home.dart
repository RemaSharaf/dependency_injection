import 'package:dependency_injection/services/settings_services.dart';
import 'package:dependency_injection/view/page_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetView<SettingServices> {
  const Home({super.key});
  // final controller = Get.lazyPut(() => PageOneController());
  // LocaleController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Launch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // controller.changeLan("ar");
                  Get.to(() => PageOne(), arguments: {
                    "id": "Reema",
                  });
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(size.width / 3, 45)),
                child: Text(
                  "1".tr,
                )),
            ElevatedButton(
                onPressed: () {
                  // controller.changeLan("en");

                  Get.toNamed(
                    "/PageTwo",
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(size.width / 3, 45)),
                child: Text(
                  "2".tr,
                )),
            ElevatedButton(
                onPressed: () {
                  Get.isDarkMode
                      ? Get.changeTheme(ThemeData.light())
                      : Get.changeTheme(ThemeData.dark());
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(size.width / 3, 45)),
                child: const Text(
                  "Change theme",
                )),
          ],
        ),
      ),
    );
  }
}
