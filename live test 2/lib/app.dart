import 'package:flutter/material.dart';
import 'package:livetest/Employe.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Employe",
      home:AddEmploye(),
    );
  }
}
