import 'package:flutter/material.dart';

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
                  Navigator.pushNamed(context, '/page-dua');
                },
                child: Text('NEXT PAGE 2 ==>>>'))
          ],
        ),
      ),
    );
  }
}
