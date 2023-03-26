import 'package:flutter/material.dart';

import 'package:flutter_spiderman/buttonbar.dart';
import 'package:flutter_spiderman/main.dart';

class secondScreen extends StatelessWidget {
  secondScreen({super.key, required this.size});
  var size;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF020017),
        body: Column(children: [
          poster(context),
          Padding(
            padding: EdgeInsets.all(size.width / 45),
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
          Padding(
            padding: EdgeInsets.all(
              size.width / 50,
            ),
            child: const Text(
              maxLines: 3,
              "But when a fierce power struggle threatens to destroy his new home, the aspiring hero realizes that with great power, there must also come great responsibility.",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(size.width / 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width / 1.3,
                  height: size.height / 16,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigo),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                    child: const Text(
                      'Check out',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                    width: size.width / 6,
                    height: size.height / 16,
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
          const Expanded(child: SizedBox(height: 59, child: buttonbar()))
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
          top: size.width / 9,
          left: size.width / 20,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
              );
            },
            child: Container(
                width: size.width / 9,
                height: size.height / 18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: Colors.white12),
                child: Padding(
                  padding: EdgeInsets.all(
                    size.width / 60,
                  ),
                  child: const Icon(
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
