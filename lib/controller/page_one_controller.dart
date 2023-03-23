import 'package:get/get.dart';

class PageOneController extends GetxController {
  String argument = Get.arguments["id"];
  int counter = 0;
  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter > 0 ? counter-- : counter;
    update();
  }

  @override
  void onInit() {
    // print("init");
    super.onInit();
  }

  @override
  void onReady() {
    // print("ready");
    super.onReady();
  }

  @override
  void onClose() {
    // print("close");
    super.onClose();
  }
}
