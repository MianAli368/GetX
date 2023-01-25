import 'package:get/get.dart';

class MainController extends GetxController {
  // Value that is going to increase we add listener with that value using obs to make
  // it observable variable .
  // obs means observable variable.
  // var counter = 0.obs;

  // void increaseCounter() {
  //   counter++;
  // }

  // Second Method
  var counter = 0;
  void increaseCounter() {
    counter++;
    refresh();
  }
}
