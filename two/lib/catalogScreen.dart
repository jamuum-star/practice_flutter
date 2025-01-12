import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:two/productDetScreen.dart';
import 'package:two/test.dart';

class Catalogscreen extends StatefulWidget {
  const Catalogscreen({super.key});

  @override
  State<Catalogscreen> createState() => _CatalogscreenState();
}

class _CatalogscreenState extends State<Catalogscreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: "Persol"),
    const Tab(text: "Werby"),
    const Tab(text: "Parker"),
    const Tab(text: "MyKta"),
    const Tab(text: "Moscot"),
  ];
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
        leading: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () {},
              child: const Image(
                image: AssetImage(
                  "assets/1.png",
                ),
              ),
            );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              "sunglasses",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                  indicatorWeight: 3,
                  labelPadding: const EdgeInsets.all(
                    0,
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.red[300],
                  labelColor: Colors.black,
                  controller: _controller,
                  tabs: myTabs),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 30, 25, 30.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItems(),
                  const SizedBox(width: 25),
                  makeItems(),
                  const SizedBox(width: 25),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeItems() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const Productdetscreen()),
        );
      },
      child: AspectRatio(
        aspectRatio: 5.5 / 9,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 3,
            ),
            borderRadius: BorderRadius.circular(
              18,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Persol Po32145",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                  color: Colors.black,
                  fontSize: 34,
                  letterSpacing: 0.2,
                ),
              ),
              Container(
                height: 105,
                width: 230,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://img.ebdcdn.com/product/front/white/pl8259.jpg?im=Resize,width=700,height=350,aspect=fill;UnsharpMask,sigma=1.0,gain=1.0"),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    20,
                    0,
                    20,
                    10,
                  ),
                  child: Text(
                    "most well respected and distringusher eyewear brand in the world",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(
                        0.6,
                      ),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                  bottom: 8,
                ),
                child: Text(
                  "\$208.30",
                  style: TextStyle(
                    color: Colors.black,
                    height: 1.1,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(18, 6, 18, 6),
                    backgroundColor: Colors.pink[700], // background color
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text(
                    "add to Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      height: 1.1,
                      letterSpacing: 0.6,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
