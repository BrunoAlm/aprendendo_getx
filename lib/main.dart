// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_teste/view/third_page.dart';

import 'controller/size_transition.dart';
import 'model/sample_model.dart';
import 'translations/my_translations.dart';
import 'view/first_page.dart';
import 'view/second_page.dart';

void main() {
  runApp(GetMaterialApp(
    // It is not mandatory to use named routes, but dynamic urls are interesting.
    initialRoute: '/home',
    defaultTransition: Transition.native,
    translations: MyTranslations(),
    locale: const Locale('pt', 'BR'),
    getPages: [
      //Simple GetPage
      GetPage(name: '/home', page: () => First()),
      // GetPage with custom transitions and bindings
      GetPage(
        name: '/second',
        page: () => const Second(),
        customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      // GetPage with default transitions
      GetPage(
        name: '/third',
        transition: Transition.cupertino,
        page: () => const Third(),
      ),
    ],
  ));
}













