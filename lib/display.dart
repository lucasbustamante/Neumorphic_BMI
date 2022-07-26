import 'package:bmi/constants/colors.dart';
import'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double size = MediaQuery.of(context).size.height*0.8;


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.35,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 100,
                child: NeumorphicButton(
                  onPressed: (){},
                  child: Center(
                    child: Text('Peso', style: TextStyle(
                        color: kFontColor, fontWeight: FontWeight.w600,
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
                  onPressed: (){},
                  child: Center(
                    child: Text('Altura', style: TextStyle(
                      color: kFontColor, fontWeight: FontWeight.w600,
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
              Text('00.00',style: TextStyle(color: kPrimaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 35),),
              Text('Kilogramas',style: TextStyle(color: kFontColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 15) ),
              SizedBox(height: size*0.09),
              Text('00.00',style: TextStyle(color: kFontColor,
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
