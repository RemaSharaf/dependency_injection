import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogGet extends StatelessWidget {
  const DialogGet({super.key});

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
                  Get.defaultDialog(
                    textCancel: "Cancel",
                    textConfirm: "COnfirm",
                    middleText: "middle text",
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(size.width / 3, 45)),
                child: const Text("Show Dialog")),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Snack bar",
                  "Hello",
                  duration: const Duration(seconds: 3),
                );
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: Size(size.width / 3, 45)),
              child: const Text("Show Snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: size.height / 3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child: const Text("Bottom Sheet"),
                  ),
                  enterBottomSheetDuration: const Duration(seconds: 1),
                  exitBottomSheetDuration: const Duration(seconds: 1),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: Size(size.width / 3, 45)),
              child: const Text("Show BottomSheet"),
            ),
            ElevatedButton(
                onPressed: () {
                  print(Get.isSnackbarOpen);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[100],
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(size.width / 3, 45)),
                child: const Text("Check")),
          ],
        ),
      ),
    );
  }
}
