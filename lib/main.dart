import 'package:exemplo_json/View/produtos_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo Json",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Homepage(),
    );
  }
}