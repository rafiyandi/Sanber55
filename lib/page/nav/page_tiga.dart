import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberapp_55/page/nav/page_empat.dart';
import 'package:sanberapp_55/router/app_routes_named.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Tiga'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text(' <= BACK PAGE 2')),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushAndRemoveUntil(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => PageEmpat(),
                  //     ),
                  //     (route) => false);
                  Get.toNamed('${AppRoutesNamed.pageEmpat}?kaosKaki');
                },
                child: Text('NEXT PAGE 4 ==>')),
          ],
        ),
      ),
    );
  }
}
