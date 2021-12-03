import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home_page.dart';
import 'login/login_page.dart';

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(
          name: '/home',
          transition: Transition.rightToLeft,
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
