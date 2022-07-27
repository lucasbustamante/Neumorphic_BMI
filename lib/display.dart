import 'package:bmi/constants/colors.dart';
import'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';

import 'button_display_onoff.dart';

class Display extends StatefulWidget {

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {

    @override
    Widget build(BuildContext context) {

      double size = MediaQuery.of(context).size.height*0.8;


      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.40,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    child: NeumorphicButton(
                      onPressed: (){
                        setState((){
                          onoff('peso');
                        });
                      },
                      child: Center(
                        child: Text('Peso', style: TextStyle(
                            color: PesoColor, fontWeight: FontWeight.w600,
                            fontSize: 20)),
                      ),
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30))
                      ),
                    ),
                  ),
                  SizedBox(height: size*0.09),
                  Container(
                    width: 100,
                    height: 50,
                    child: NeumorphicButton(
                      onPressed: (){
                        setState((){
                          onoff('altura');
                        });
                      },
                      child: Center(
                        child: Text('Altura', style: TextStyle(
                            color: AltColor, fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),),
                      ),
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30))
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$Peso',style: TextStyle(color: PesoColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 35),),
                  Text('Kilogramas',style: TextStyle(color: kFontColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15) ),
                  SizedBox(height: size*0.09),
                  Text('$Alt',style: TextStyle(color: AltColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 35),),
                  Text('Centimetros',style: TextStyle(color: kFontColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15) ),
                ],
              )
            ],
          ),),
      );
    }
  }
