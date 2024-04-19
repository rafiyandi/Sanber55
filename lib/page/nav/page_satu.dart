import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberapp_55/router/app_routes_named.dart';

import 'page_dua.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Satu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => PageDua(),
                  //     ));
                  // Get.to(() => PageDua());
                  Get.toNamed(AppRoutesNamed.pageDua);
                },
                child: Text('NEXT PAGE 2 ==>>>'))
          ],
        ),
      ),
    );
  }
}
