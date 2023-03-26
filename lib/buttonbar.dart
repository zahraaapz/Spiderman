import 'package:flutter/material.dart';
import 'package:flutter_spiderman/barcolor.dart';
import 'package:flutter_spiderman/icon.dart';

class buttonbar extends StatefulWidget {
  const buttonbar({
    Key? key,
  }) : super(key: key);

  @override
  State<buttonbar> createState() => _buttonbarState();
}

class _buttonbarState extends State<buttonbar> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF020017),
      body: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedContainer(
            width: double.infinity,
            height: size.height / 15,
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: colorbar),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < iconItem.length; i++)
                  InkWell(
                    onTap: () => setState(() {
                      select = i;
                    }),
                    child: Selecticon(i, size),
                  ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  // ignore: non_constant_identifier_names
  Selecticon(int i, size) {
    bool active = select == i ? true : false;
    return SizedBox(
      height: size.height / 15,
      child: Align(
        alignment: Alignment.center,
        child: Icon(
          iconItem[i].icon,
          color: active ? selectcolor : iconcolor,
        ),
      ),
    );
  }
}
