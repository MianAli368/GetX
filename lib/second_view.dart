import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_x/main_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // When we are using or initializing Get X Controller then we use Get.put.
    // otherwise if Get X Controller is already initialized and we wanna use it in
    // other place then we use Get.find.
    var controller = Get.find<MainController>();
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Second Screen",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          GetBuilder<MainController>(builder: (controller) {
            return Text("Value was : ${controller.counter}");
          }),
          ElevatedButton(
              onPressed: () {
                controller.counter--;
                controller.refresh();
                // both are for same purpose.
                // controller.update();
              },
              child: const Text("Decrease Value"))
        ]),
      ),
    );
  }
}
