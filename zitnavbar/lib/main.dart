import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myCurrentIndex = 0;

  // page list
  List pages = [
    Container(
      color: const Color(0xFF2A9D8F),
      child: const Center(
        child: Text(
          'Home Page Screen',
          style: TextStyle(
              fontSize: 70, color: Colors.white, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    ),

    /////
    Container(
      color: const Color.fromARGB(255, 239, 6, 87),
      child: const Center(
        child: Text(
          'Study Page Screen',
          style: TextStyle(
              fontSize: 70, color: Colors.white, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    ////

    Container(
      color: const Color.fromARGB(255, 5, 119, 226),
      child: const Center(
        child: Text(
          'Read Page Screen',
          style: TextStyle(
              fontSize: 70, color: Colors.white, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    ////

    Container(
      color: const Color.fromARGB(255, 231, 133, 5),
      child: const Center(
        child: Text(
          'Saved Page Screen',
          style: TextStyle(
              fontSize: 70, color: Colors.white, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    /////

    Container(
      color: const Color.fromARGB(255, 60, 25, 136),
      child: const Center(
        child: Text(
          'Setting Page Screen',
          style: TextStyle(
              fontSize: 70, color: Colors.white, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[myCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: myCurrentIndex,
          iconSize: 35,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.school_outlined), label: "Study"),
            BottomNavigationBarItem(
                icon: Icon(Icons.auto_stories_outlined), label: "Books"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: "Saved"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: "Setting"),
          ],
          onTap: (myNewCurrent) {
            setState(() {
              myCurrentIndex = myNewCurrent;
            });
          },
        ),
      ),
    );
  }
}
