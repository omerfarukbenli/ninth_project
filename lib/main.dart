import 'package:flutter/material.dart';

import 'first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hesap Makinası',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const First(),
    );
  }
}
