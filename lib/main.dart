import 'package:flutter/material.dart';
import 'package:flutter_spiderman/buttonbar.dart';
import 'package:flutter_spiderman/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF020017),
          body: Column(children: [
            Padding(
              padding: EdgeInsets.all(size.width / 45),
              child: Row(
                children: const [
                  Text(
                    'Discover',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.width / 45),
              child: iconHeader(size),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              const Text('Recommended', style: TextStyle(color: Colors.white)),
              SizedBox(
                width: size.width / 43,
              ),
              const Text('New', style: TextStyle(color: Colors.white)),
              SizedBox(
                width: size.width / 43,
              ),
              const Text('Best sollor', style: TextStyle(color: Colors.white))
            ]),
            Padding(
                padding: EdgeInsets.all(
                  size.width / 55,
                ),
                child: Column(children: [
                  Stack(
                    children: [
                      Container(
                        height: size.height / 3.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/cover.png'))),
                      ),
                      Positioned(
                        right: size.width / 50,
                        top: size.width / 43,
                        child: Container(
                          width: size.width / 9,
                          height: size.width / 9,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(1000)),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 0,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => secondScreen(
                                  size: size,
                                ),
                              ),
                            );
                          },
                          child: shopContainer(size),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.all(size.width / 75),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Treding',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Container(
                              width: size.width / 9,
                              height: size.width / 9,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  color: Colors.black),
                              child: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              ),
                            )
                          ])),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        photo1(size),
                        photo2(size),
                      ]))
                ])),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width / 82, right: size.width / 82),
                child: SizedBox(
                  width: double.infinity,
                  height: size.width / 7,
                  child: const buttonbar(),
                ),
              ),
            )
          ])),
    );
  }

  Stack photo1(size) {
    return Stack(
      children: [
        Container(
          height: size.height / 3.5,
          width: size.width / 2.05,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('assets/pic1.jpg'), fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: size.width / 2.05,
            height: size.width / 7.23,
            decoration: const BoxDecoration(
                color: Color.fromARGB(
                  100,
                  213,
                  208,
                  208,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.all(size.width / 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Creature',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                      width: size.width / 10,
                      height: size.height / 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1100),
                          color: Colors.blue),
                      child: const Icon(Icons.add))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Stack photo2(size) {
    return Stack(children: [
      Padding(
        padding: EdgeInsets.all(size.width / 25),
        child: Container(
          height: size.height / 3.5,
          width: size.width / 2.05,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('assets/pic2.jpg'), fit: BoxFit.cover)),
        ),
      ),
      Positioned(
        bottom: 0,
        child: Padding(
          padding: EdgeInsets.all(size.width / 25),
          child: Container(
            width: size.width / 2.05,
            height: size.width / 7.23,
            decoration: const BoxDecoration(
                color: Color.fromARGB(
                  100,
                  213,
                  208,
                  208,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.all(
                size.width / 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    'Action',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                      width: size.width / 10,
                      height: size.height / 20,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(1100)),
                      child: const Icon(Icons.add))
                ],
              ),
            ),
          ),
        ),
      )
    ]);
  }

  Container shopContainer(size) {
    return Container(
      width: double.infinity,
      height: size.height / 22,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: Color.fromARGB(
            100,
            213,
            208,
            208,
          )),
      child: Padding(
        padding: EdgeInsets.all(size.width / 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Spider man miles morales',
                style: TextStyle(color: Colors.white)),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Row iconHeader(Size size) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(size.height / 82),
          child: Container(
            height: size.height / 18,
            width: size.width / 1.4,
            decoration: (BoxDecoration(
                color: const Color.fromARGB(
                  100,
                  213,
                  208,
                  208,
                ),
                borderRadius: BorderRadius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Search',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: size.width / 6,
          height: size.height / 18,
          decoration: BoxDecoration(
              color: const Color.fromARGB(
                100,
                213,
                208,
                208,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: const Icon(
            Icons.content_paste_rounded,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
