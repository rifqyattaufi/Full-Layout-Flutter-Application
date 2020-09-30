import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:latihan_list/counterData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: counterData(),
    );
  }
}
