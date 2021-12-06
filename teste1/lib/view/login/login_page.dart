import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste1/view/login/widgets/input_decoration.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.titulo}) : super(key: key);
  final String titulo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          height: 300,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text('Entre ou'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'cadastre-se',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.indigo[300]),
                      foregroundColor:
                          MaterialStateProperty.all(Colors.indigo[800]),
                    ),
                  ),
                  Text('para continuar:'),
                ],
              ),
              TextFormField(
                decoration: meuInputDec("Usuário"),
              ),
              TextFormField(
                decoration: meuInputDec("Senha"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                  backgroundColor: MaterialStateProperty.all(Colors.black38),
                ),
                child: const Text('Login'),
                onPressed: () {
                  Get.toNamed('/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
