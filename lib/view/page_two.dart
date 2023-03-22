import 'package:dependency_injection/controller/page_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  PageTwo({super.key});
  PageOneController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetBuilder"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "${controller.counter}",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
