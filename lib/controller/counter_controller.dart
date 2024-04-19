import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  // var counter = 0.obs;

  // void increment() => counter.value++;

  // void decrement() => counter.value--;

  int counter = 0;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}
