import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:two/catalogScreen.dart';

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Center(child: Text("Coffe App")),
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurple),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/17696222/pexels-photo-17696222/free-photo-of-man-with-backpack-walking-down-stairs-by-wall.jpeg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 240,
                  ),
                  Container(
                    height: 60,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              28,
                            ),
                            bottomLeft: Radius.circular(
                              28,
                            ))),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 10, 10, 10),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const Catalogscreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Go shop",
                                style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 1.5,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
