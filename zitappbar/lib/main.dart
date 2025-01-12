import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.black,
          centerTitle: true,
          toolbarHeight: 80,
          elevation: 0,
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
          titleTextStyle: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
          title: const Text('Travel App'),
          leading: const Icon(Icons.menu),
          leadingWidth: 80,
          actions: const [
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.shopping_cart),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
