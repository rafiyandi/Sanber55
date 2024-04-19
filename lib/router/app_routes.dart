import 'package:get/get.dart';
import 'package:sanberapp_55/binding/counter_binding.dart';
import 'package:sanberapp_55/page/counter/counter_dua_page.dart';
import 'package:sanberapp_55/page/counter/counter_page.dart';
import 'package:sanberapp_55/page/nav/page_dua.dart';
import 'package:sanberapp_55/page/nav/page_empat.dart';
import 'package:sanberapp_55/page/nav/page_satu.dart';
import 'package:sanberapp_55/page/nav/page_tiga.dart';
import 'package:sanberapp_55/router/app_routes_named.dart';

class AppRoutes {
  static final appPages = [
    GetPage(
      name: AppRoutesNamed.initialPage,
      page: () => CounterPage(),
    ),
    GetPage(
        name: AppRoutesNamed.pageDua,
        page: () => CounterDuaPage(),
        binding: CounterBinding()),
    // GetPage(name: AppRoutesNamed.pageDua, page: () => PageDua()),
    // GetPage(name: AppRoutesNamed.pageTiga, page: () => PageTiga()),
    // GetPage(name: '${AppRoutesNamed.pageEmpat}?', page: () => PageEmpat()),
  ];
}
