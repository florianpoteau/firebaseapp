import 'package:firebaseapp/service/CustomConnexion.dart';
import 'package:firebaseapp/service/CustomRouter.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Homepage"),
            ElevatedButton(
                onPressed: () {
                  CustomConnexion.disconnectUser().then((value) {
                    if (value == "OK") {
                      Navigator.pushNamed(context, CustomRouter.connexion);
                    }
                  });
                },
                child: Text("se déconnecté"))
          ],
        ),
      ),
    );
  }
}
