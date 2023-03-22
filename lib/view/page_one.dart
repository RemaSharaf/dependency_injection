import 'package:dependency_injection/controller/page_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  PageOne({super.key});
  PageOneController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetBuilder"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  controller.increment();
                },
                icon: const Icon(Icons.add),
              ),
              Text("${controller.counter}"),
              IconButton(
                onPressed: () {
                  controller.decrement();
                },
                icon: const Icon(Icons.remove),
              )
            ],
          )
        ],
      ),
    );
  }
}
