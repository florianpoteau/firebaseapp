import 'package:firebaseapp/screen/Connexion/connexion.dart';
import 'package:firebaseapp/screen/Homepage/homepage.dart';
import 'package:firebaseapp/screen/Inscription/inscription.dart';
import 'package:flutter/material.dart';

class CustomRouter {
  static const String base = "/";
  static const String homepage = "/homepage";
  static const String connexion = "/connexion";
  static const String inscription = "/inscription";

  static Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      case homepage:
        return MaterialPageRoute(
          builder: (context) => Homepage(),
        );
      case connexion:
        return MaterialPageRoute(
          builder: (context) => Connexion(),
        );
      case inscription:
        return MaterialPageRoute(builder: (context) => Inscription());
      default:
        return MaterialPageRoute(
          builder: (context) => Connexion(),
        );
    }
  }
}
