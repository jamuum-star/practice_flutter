import 'package:flutter/material.dart';

class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shop',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Center(
        child: Text('Welcome to the Shop Page!'),
      ),
    );
  }
}
