import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste1/controller/login_controller.dart';
import 'package:teste1/view/login/widgets/input_decoration.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key, required this.titulo}) : super(key: key);
  final String titulo;

  final LoginController controller = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          titulo,
          style: const TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.indigo[300],
              borderRadius: BorderRadius.circular(5)),
          height: 350,
          width: 300,
          child: SingleChildScrollView(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: controller.loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Entre ou',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'cadastre-se',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.indigo[300]),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.indigo[700]),
                        ),
                      ),
                      const Text(
                        'para continuar:',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    decoration: meuInputDec("Usuário"),
                    controller: controller.emailController,
                    onSaved: (value) {
                      controller.email = value!;
                    },
                    validator: (value) {
                      return controller.validateEmail(value!);
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: meuInputDec("Senha"),
                    controller: controller.passwordController,
                    obscureText: true,
                    onSaved: (value) {
                      controller.password = value!;
                    },
                    validator: (value) {
                      return controller.validatePassword(value!);
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black38),
                    ),
                    child: const Text('Login'),
                    onPressed: () {
                      controller.checkLogin();
                      Get.toNamed('/home');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
