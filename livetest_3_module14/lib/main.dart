import 'package:flutter/material.dart';
import 'package:livetest_3_module14/recepi_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: "Live Test 3",
      home: RecepiListview(),
    );
  }
}


