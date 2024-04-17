import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sanberapp_55/page/auth/login_page.dart';
import 'package:sanberapp_55/page/counter/counter_page.dart';
import 'package:sanberapp_55/page/home_page.dart';
import 'package:sanberapp_55/page/month_page.dart';
import 'package:sanberapp_55/page/nav/main-page/main_page.dart';
import 'package:sanberapp_55/page/nav/page_dua.dart';
import 'package:sanberapp_55/page/nav/page_empat.dart';
import 'package:sanberapp_55/page/nav/page_satu.dart';
import 'package:sanberapp_55/page/nav/page_tiga.dart';
import 'package:sanberapp_55/widgets/custom_text_form_field.dart';

import 'page/user/user_page.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      // routes: {
      //   '/': (context) => PageSatu(),
      //   '/page-dua': (context) => PageDua(),
      //   '/page-tiga': (context) => PageTiga(),
      //   '/page-empat': (context) => PageEmpat(),
      // },
    );
  }
}
