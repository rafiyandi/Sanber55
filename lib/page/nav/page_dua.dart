import 'package:flutter/material.dart';
import 'package:sanberapp_55/page/nav/page_tiga.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});
  // final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Dua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Page Dua',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(' <= BACK PAGE 1')),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => PageTiga(),
                  //     ));
                  Navigator.pushReplacementNamed(context, '/page-tiga');
                },
                child: Text('NEXT PAGE 3 ==>')),
          ],
        ),
      ),
    );
  }
}
