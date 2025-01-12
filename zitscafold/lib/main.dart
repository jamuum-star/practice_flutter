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
          backgroundColor: Colors.amber,
          title: const Text('hello scafold'),
        ),
        drawer: const Drawer(
          child: Center(
            child: Text('Menu App'),
          ),
        ),
        body: const Center(
          child: Text('flutter bignners'),
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Text('+'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.audio_file),
              label: ('Audio'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner),
              label: ('Scanner'),
            ),
          ],
        ),
      ),
    );
  }
}
