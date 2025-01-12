import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Productdetscreen extends StatefulWidget {
  const Productdetscreen({super.key});

  @override
  State<Productdetscreen> createState() => _ProductdetscreenState();
}

class _ProductdetscreenState extends State<Productdetscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        iconTheme: const IconThemeData.fallback(),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.5,
                    autoPlay: false,
                    autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                  ),
                  items: const [
                    // Add your image widgets here
                   
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
