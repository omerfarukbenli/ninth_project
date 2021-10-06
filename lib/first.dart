import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/second.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Hesap Makinası',
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
      ),
      body: const Second(),
    );
  }
}
