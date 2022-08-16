import 'package:bmi/constants/colors.dart';
import 'package:bmi/display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';

import 'button_display_onoff.dart';

class Result extends StatelessWidget {
  final String result;

  const Result({super.key, required this.result});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size.width;

    return Container(
      color: NeumorphicTheme.baseColor(context),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Neumorphic(child: Container(
              height: size/1.5,
              width: size/1.2,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$result',style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 70, fontWeight: FontWeight.w700
                      ),),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text('IMC',style: TextStyle(fontWeight: FontWeight.w700,
                              color: kFontColor, fontSize: 35),),
                          Text(info,style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 15, fontWeight: FontWeight.w600
                          ),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: size/25),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Abaixo do peso', style: TextStyle(color: kGraphicColor1,
                          fontWeight: FontWeight.w600),),
                      Text('Normal', style: TextStyle(color: kGraphicColor2,
                          fontWeight: FontWeight.w600),),
                      Text('Acima do peso', style: TextStyle(color: kGraphicColor3,
                          fontWeight: FontWeight.w600),)
                    ],
                  ),
                  SizedBox(height: size/40),
                  Container(
                    height: 10,
                    width: size/1.33,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [kGraphicColor1, kGraphicColor2, kGraphicColor3]
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                  SizedBox(height: size/40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('16.0',style: TextStyle(fontWeight: FontWeight.w700, color: kNumberColor),),
                        Text('18.5',style: TextStyle(fontWeight: FontWeight.w700, color: kNumberColor),),
                        Text('25.0',style: TextStyle(fontWeight: FontWeight.w700, color: kNumberColor),),
                        Text('40.0',style: TextStyle(fontWeight: FontWeight.w700, color: kNumberColor),),
                      ],
                    ),
                  )
                ],
              ),
            ),
              style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(35))
              ),
            ),
          ),
          SizedBox(height: 40),
          NeumorphicButton(
            onPressed: (){
              Navigator.pop(context);
            },
            style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle()
            ),
            child: Container(
              height: size/7,
              child: Center(child: Icon(Icons.keyboard_arrow_left_outlined, color: kPrimaryColor,
                size: 45,)),
            ),
          )
        ],
      ),
    );
  }
}
