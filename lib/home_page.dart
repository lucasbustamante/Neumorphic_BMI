import 'package:bmi/constants/colors.dart';
import 'package:bmi/display_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';
import 'button_display_onoff.dart';
import 'display.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  Widget Button(String num, {Color? color, FontWeight? value}){

    var size = MediaQuery.of(context).size.height*0.11;

    if(value == null){
      value = FontWeight.w500;
    }
    if(color == null){
      color = kNumberColor;
    }

    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: NeumorphicButton(
          child: Center(child:
          Text(num,style: TextStyle(
            fontSize: 25,
            color: color,
            fontWeight: value,
          ),
          ),
          ),
          onPressed: (){
            setState((){
              onoff(num);
              if(num == 'GO' && Peso2 != '0' && Alt2 != '0'){
                showModalBottomSheet(
                    barrierColor: Colors.black.withAlpha(1),
                    backgroundColor: Colors.transparent,
                    context: context, builder: (BuildContext context){
                  return Result(result: result);
                });
              }
            });
          },
          style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(size))
          ),
          padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.0243
          ),
        ),
      ),
    );
  }

void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

}

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
                        Button('AC', color: kPrimaryColor, value: FontWeight.w500,),
                        Button('←',
                          color: kPrimaryColor, value: FontWeight.w900,),
                        Button('GO', color: kPrimaryColor,value: FontWeight.w500,),
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

String result = '';
String Peso2 = '';
String Alt2 = '';
teste (String result, String Peso2, String Alt2){
  result = result;
  Alt2 = Alt;
  Peso2 = Peso;
}
