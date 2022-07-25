import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';


class Button extends StatelessWidget {
  final bool? flex;
  final String num;

  const Button(this.num, {super.key, this.flex});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height*0.11;

    int flexy = 1;
    if(flex == null){
      flexy = 0;
    }

    return Expanded(
      flex: flexy,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: NeumorphicButton(
          child: Center(child: Text(num,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300
          ),)),
          onPressed: (){},
          style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(size))
          ),
          padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.0243
          ),
        ),
      ),
    );
  }
}