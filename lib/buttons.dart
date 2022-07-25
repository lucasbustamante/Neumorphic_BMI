import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';


class Button extends StatelessWidget {
  final String num;
  final Color? color;

  const Button(this.num, {this.color});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height*0.11;


    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: NeumorphicButton(
          child: Center(child: Text(num,style: TextStyle(
              fontSize: 25,
              color: color,
              fontWeight: FontWeight.w500
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