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
      body: SafeArea(
        child: Column(
          children: [
            Display(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Divider(
                thickness: 1.5,
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(height: 15),
            Container(
                height: MediaQuery.of(context).size.height * 0.44,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Column(
                    children: [
                      Button('7'),
                      Button('4'),
                      Button('1'),
                      Expanded(child: Container(), flex: 1)
                    ],
                  ),),
                  Expanded(
                    child: Column(
                      children: [
                        Button('8'),
                        Button('5'),
                        Button('2'),
                        Button('0')
                      ],
                    ),
                  ),
                  Expanded(child: Column(
                    children: [
                      Button('9'),
                      Button('6'),
                      Button('3'),
                      Button('.')
                    ],
                  ),),
                  Expanded(
                    child: Column(
                      children: [
                        Button('AC', color: kPrimaryColor,),
                        Button('←', color: kPrimaryColor, value: FontWeight.w900,),
                        Button('GO', color: kPrimaryColor,)
                      ],
                    ),
                  )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
