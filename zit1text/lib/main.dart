import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hello world pizza"),
        ),
        body: const Center(
          child: Text(
            "hello world pizza",
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.w700,
              color: Colors.lightBlue,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
