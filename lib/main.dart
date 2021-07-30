import 'package:flutter/material.dart';
import 'utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HF',
      theme: ThemeData(
        primarySwatch: createMaterialColor(Color(0xFFE0E722)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Feed'),
        ),
        body: const Center(
          child: Text('Tela inicial'),
        ),
      ),
    );
  }
}