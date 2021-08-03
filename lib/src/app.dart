import 'package:flutter/material.dart';
import 'package:hf/src/screens/login.dart';
import 'package:hf/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HF',
      theme: ThemeData(primarySwatch: createMaterialColor(Color(0xFFE0E722))),
      home: LoginScreen()
    );
  }
}