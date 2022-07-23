import 'package:flutter/material.dart';
import 'package:simple_calcutor_with_getx/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: theme(),
      home: Container(),
    );
  }
}
