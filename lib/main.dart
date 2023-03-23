import 'package:dependency_injection/locale/locale.dart';
import 'package:dependency_injection/middleware/middleware_auth.dart';
import 'package:dependency_injection/middleware/middleware_super.dart';
import 'package:dependency_injection/services/settings_services.dart';
import 'package:dependency_injection/utils/bindings_dependency.dart';
import 'package:dependency_injection/view/counter.dart';
import 'package:dependency_injection/view/dialog.dart';
import 'package:dependency_injection/view/home.dart';
import 'package:dependency_injection/view/middleware_screens/%D9%90admin.dart';
import 'package:dependency_injection/view/middleware_screens/home.dart';
import 'package:dependency_injection/view/middleware_screens/login.dart';
import 'package:dependency_injection/view/middleware_screens/super..dart';
import 'package:dependency_injection/view/page_one.dart';
import 'package:dependency_injection/view/page_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initalServices();
  runApp(const MyApp());
}

Future initalServices() async {
  await Get.putAsync(() => SettingServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingServices c = Get.find();
    return GetMaterialApp(
      theme: ThemeData.light(),
      locale: Locale(c.sharedPreferences.getString("lang")!),
      translations: MyLocale(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      initialBinding: MyBinding(),
      getPages: [
        GetPage(
          name: "/",
          page: () => const Home(),
        ),
        GetPage(name: "/LogIn", page: () => const LogIn(), middlewares: [
          MiddlewareAuth(),
          MiddlewareSuper(),
        ]),
        GetPage(
          name: "/SharedHome",
          page: () => const SharedHome(),
        ),
        GetPage(
          name: "/PageOne",
          page: () => PageOne(),
        ),
        GetPage(
          name: "/PageTwo",
          page: () => PageTwo(),
        ),
        GetPage(
          name: "/Admin",
          page: () => const Admin(),
        ),
        GetPage(
          name: "/Super",
          page: () => const Super(),
        ),
        GetPage(
          name: "/Counter",
          page: () => const Counter(),
        ),
        GetPage(
          name: "/Dialog",
          page: () => const DialogGet(),
        ),
      ],
    );
  }
}
