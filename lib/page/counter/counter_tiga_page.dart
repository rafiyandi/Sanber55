import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sanberapp_55/controller/counter_controller.dart';

class CounterTigaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counterC = Get.put(CounterController());
    print("Di rebuild Ulang");
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  counterC.decrement();
                },
                child: Icon(Icons.remove)),
            SizedBox(width: 10),
            GetBuilder(
              init: counterC,
              builder: (controller) => Text('Counter : ${counterC.counter}'),
            ),
            SizedBox(width: 10),
            InkWell(
                onTap: () {
                  counterC.increment();
                  print('Increment : ${counterC.counter}');
                },
                child: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
