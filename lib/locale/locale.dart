import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "  الصفحة الاولى عربي ",
          "2": "الصفحة الثانية انجليزي",
        },
        "en": {
          "1": "Page One Arabic",
          "2": "Page Two English",
        },
      };
}
