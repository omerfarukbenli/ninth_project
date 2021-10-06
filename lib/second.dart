import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  TextEditingController s1 = TextEditingController();
  TextEditingController s2 = TextEditingController();

  num sayi1 = 0;
  num sayi2 = 0;
  num sonuc = 0;

  topla() {
    setState(() {
      sayi1 = num.parse(s1.text);
      sayi2 = num.parse(s2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  cikar() {
    setState(() {
      sayi1 = num.parse(s1.text);
      sayi2 = num.parse(s2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  carp() {
    setState(() {
      sayi1 = num.parse(s1.text);
      sayi2 = num.parse(s2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  bolme() {
    setState(() {
      sayi1 = num.parse(s1.text);
      sayi2 = num.parse(s2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$sonuc'),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 50, 100, 0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              controller: s1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 10, 100, 0),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              controller: s2,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              topla();
            },
            child: const Text('topla'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              cikar();
            },
            child: const Text('çıkar'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              carp();
            },
            child: const Text('çarp'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              bolme();
            },
            child: const Text('böl'),
          ),
        ],
      ),
    );
  }
}
