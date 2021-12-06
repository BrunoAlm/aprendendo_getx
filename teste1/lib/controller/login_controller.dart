import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  var email = '';
  var password = '';

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Coloque um usuário válido";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "A senha precisa ter 6 caracteres";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }
}
