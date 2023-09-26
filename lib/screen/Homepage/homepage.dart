import 'package:firebaseapp/service/CustomConnexion.dart';
import 'package:firebaseapp/service/CustomRouter.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () async {
            await CustomConnexion.signOut();
            Navigator.popAndPushNamed(context, CustomRouter.connexion);
          },
          icon: Icon(
            Icons.close,
            color: Colors.red,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Homepage"),
          ],
        ),
      ),
    );
  }
}
