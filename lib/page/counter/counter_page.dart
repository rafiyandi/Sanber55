import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sanberapp_55/controller/counter_controller.dart';
import 'package:sanberapp_55/page/counter/counter_dua_page.dart';
import 'package:sanberapp_55/router/app_routes_named.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            // SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => CounterDuaPage(),
                  //     ));
                  Get.toNamed(AppRoutesNamed.pageDua);
                },
                child: Text('Next Page'))
          ],
        ),
      ),
    );
  }
}
