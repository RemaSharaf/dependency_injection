import 'package:dependency_injection/controller/page_one_controller.dart';
import 'package:dependency_injection/locale/locale_controller.dart';
import 'package:get/get.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageOneController(), fenix: true);
    Get.lazyPut(() => LocaleController(), fenix: true);
  }
}
