import 'package:flutter/material.dart';
import 'package:kuis_prakmobile/daftar_belanja.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis Praktikum Pemrograman Mobile',
     // theme: ThemeData.light(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.purpleAccent,
      ),
      home: MainScreen(),
    );
  }
}
