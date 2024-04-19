import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sanberapp_55/controller/counter_controller.dart';

class CounterDuaPage extends StatelessWidget {
  const CounterDuaPage({super.key});

  @override
  Widget build(BuildContext context) {
    var counterC = Get.find<CounterController>();
    print("Di rebuild Ulang");
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Data Counter Page Satu ${counterC.counter}"),
            // SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     InkWell(
            //         onTap: () {
            //           counterC.decrement();
            //         },
            //         child: Icon(Icons.remove)),
            //     SizedBox(width: 10),
            //     GetBuilder(
            //       init: counterC,
            //       builder: (controller) =>
            //           Text('Counter : ${counterC.counter}'),
            //     ),
            //     SizedBox(width: 10),
            //     InkWell(
            //         onTap: () {
            //           counterC.increment();
            //           print('Increment : ${counterC.counter}');
            //         },
            //         child: Icon(Icons.add)),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
