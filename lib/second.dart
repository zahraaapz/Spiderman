import 'package:flutter/material.dart';

import 'package:flutter_spiderman/buttonbar.dart';
import 'package:flutter_spiderman/main.dart';

void main() {
  runApp(const secondScreen());
}

class secondScreen extends StatelessWidget {
  const secondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF020017),
        body: Column(children: [
          poster(context),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Spider man miles morales',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    '\$655',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'sony',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ]),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              maxLines: 3,
              "But when a fierce power struggle threatens to destroy his new home, the aspiring hero realizes that with great power, there must also come great responsibility.",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigo),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                    child: const Text(
                      'Check out',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                    width: 50,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF37364d)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 216,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(height: 59, child: buttonbar()),
          )
        ]),
      ),
    );
  }

  Stack poster(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(130),
              image:
                  const DecorationImage(image: AssetImage('assets/cover.png'))),
        ),
        Positioned(
          top: 40,
          left: 30,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const StoreApp(),
                ),
              );
            },
            child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: Colors.white12),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                )),
          ),
        )
      ],
    );
  }
}
