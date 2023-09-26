import 'package:firebaseapp/screen/Homepage/homepage.dart';
import 'package:firebaseapp/service/CustomConnexion.dart';
import 'package:firebaseapp/service/CustomRouter.dart';
import 'package:flutter/material.dart';

class Inscription extends StatelessWidget {
  Inscription({super.key});
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _controllerEmail,
          decoration: InputDecoration(hintText: "Email"),
        ),
        TextField(
            controller: _controllerPassword,
            decoration: InputDecoration(hintText: "Password")),
        ElevatedButton(
          child: const Text("Inscription"),
          onPressed: () {
            if (_controllerEmail.text.isEmpty ||
                _controllerPassword.text.isEmpty) return;
            CustomConnexion.createUser(
                    email: _controllerEmail.text,
                    password: _controllerPassword.text)
                .then((value) {
              if (value == "OK") {
                Navigator.pushNamed(context, CustomRouter.connexion);
              } else {
                print(value);
              }
            });
          },
        ),
      ],
    ));
  }
}
