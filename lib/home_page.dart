import 'package:bmi/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';

import 'buttons.dart';
import 'display.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Column(
        children: [
          Display(),
          Divider(
            thickness: 1,
            color: kFontColor,
          ),
          SizedBox(height: 15),
          Container(
              height: MediaQuery.of(context).size.height * 0.48,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                children: [
                  Button('7'),
                  Button('4'),
                  Button('1')
                ],
              ),
                Column(
                  children: [
                    Button('8'),
                    Button('5'),
                    Button('2'),
                    Button('0')
                  ],
                ),
                Column(
                  children: [
                    Button('9'),
                    Button('6'),
                    Button('3'),
                    Button('.')
                  ],
                ),
                Column(
                  children: [
                    Button('AC', flex: true,),
                    Button('<',flex: true,),
                    Button('GO', flex: true,)
                  ],
                )],
            ),
          )
        ],
      ),
    );
  }
}
