import 'package:flutter/material.dart';
import 'package:sanberapp_55/page/auth/login_page.dart';
import 'package:sanberapp_55/storage/auth_storage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              final int response = await AuthStorage().clearStorage();
              if (response == 200) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    (route) => false);
              }
            },
            child: Text("Logout")),
      ),
    );
  }
}
