import 'package:get/get.dart';
import 'package:sanberapp_55/controller/counter_controller.dart';

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}
