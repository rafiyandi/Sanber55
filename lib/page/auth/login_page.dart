import 'package:flutter/material.dart';
import 'package:sanberapp_55/models/request/login_request_model.dart';
import 'package:sanberapp_55/page/home_page.dart';
import 'package:sanberapp_55/service/auth_service.dart';
import 'package:sanberapp_55/storage/auth_storage.dart';

import '../../widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    getCredentialFromLocal();
  }

  getCredentialFromLocal() async {
    final String token = await AuthStorage().getCredentialFromLocal();
    if (token != null) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
          (route) => false);
    } else {
      print('Null Token');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 200),
        child: Column(
          children: [
            CustomTextFormField(
              label: 'Masukkan Email',
              controller: emailController,
            ),
            const SizedBox(height: 30),
            CustomTextFormField(
              label: 'Masukkan Password',
              controller: passwordController,
            ),
            const SizedBox(height: 30),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      AuthService()
                          .signinWithEmailAndPassword(
                              request: LoginRequestModel(
                                  email: emailController.text,
                                  password: passwordController.text))
                          .then((value) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                            (route) => false);
                      });
                    },
                    child: const Text("Masuk")))
          ],
        ),
      ),
    );
  }
}
