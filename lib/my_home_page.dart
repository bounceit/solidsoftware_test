import 'dart:math';

import 'package:flutter/material.dart';

///STF with function for change background color on tap
class MyHomePage extends StatefulWidget {
  /// constructor for keys
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _random = Random();
  final _max = 256;
  Color _getRandomColor() => Color.fromRGBO(
        _random.nextInt(_max),
        _random.nextInt(_max),
        _random.nextInt(_max),
        1,
      );

  void _incrementCounter() {
    setState(() {
      _getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => _incrementCounter(),
          child: Container(
            color: _getRandomColor(),
            child: const Center(
              child: Text('Hey there'),
            ),
          ),
        ),
      ),
    );
  }
}
