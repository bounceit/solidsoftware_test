import 'package:flutter/material.dart';

import 'package:solidsoftware_test/my_home_page.dart';

///Widget include MaterialApp
class MyApp extends StatelessWidget {
  /// constructor for keys
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}
