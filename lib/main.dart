import 'package:flutter/material.dart';
import 'package:flutter_app/ui/chip.dart';
// import 'package:flutter_app/ui/switch_app.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app pertama',
      home: ChipApp(),
    );
  }
}