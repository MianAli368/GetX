import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_x/main_controller.dart';
import 'package:get_x/second_view.dart';

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    // When we are using or initializing Get X Controller then we use Get.put.
    // otherwise if Get X Controller is already initialized and we wanna use it in
    // other place then we use Get.find.
    var controller = Get.put(MainController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // we have to add .value to use counter value.
            // Widget which is going to update we make that widget observable widget by
            //wrapping with Obx to observe the change.
            // Obx(() =>

            //  Text("Increased Value : ${controller.counter.value}")),

            // Second Method
            // When we wanna update multiple things at the same time then we use GetBuilder
            GetBuilder<MainController>(builder: (controller) {
              return Text("Increased Value : ${controller.counter}");
            }),

            ElevatedButton(
                onPressed: controller.increaseCounter,
                child: const Text("Increase Value")),

            ElevatedButton(
                onPressed: () {
                  // we use => to remover controller from memory when it is not used.
                  Get.to(() => const SecondScreen());
                },
                child: const Text("Second Screen")),

            ElevatedButton(
                onPressed: () {
                  Get.changeTheme(ThemeData.dark());
                },
                child: const Text("Change Theme")),

            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/secondPage");
                },
                child: const Text("Get Page")),

            ElevatedButton(
                onPressed: () {
                  Get.to(() => const SecondScreen(),
                      transition: Transition.downToUp,
                      duration: const Duration(seconds: 1));
                },
                child: const Text("Transition")),

            ElevatedButton(
                onPressed: () {
                  Get.snackbar("Snack Bar", "Mian Ali is a Software Engineer",
                      backgroundColor: Colors.amber, colorText: Colors.white);
                },
                child: const Text("Show Snackbar")),

            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      backgroundColor: Colors.amber,
                      barrierDismissible: false,
                      title: "Mian Ali",
                      middleText: "Mian Ali is a Software Engineer",
                      textCancel: "No",
                      textConfirm: "Yes");
                },
                child: const Text("Show Dialogue"))
          ],
        ),
      ),
    );
  }
}
