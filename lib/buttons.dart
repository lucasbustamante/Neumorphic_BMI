import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';


class Button extends StatelessWidget {
  final bool? flex;
  final String num;

  const Button(this.num, {super.key, this.flex});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height*0.12;

    int flexy = 1;
    if(flex == null){
      flexy = 0;
    }

    return Expanded(
      flex: flexy,
      child: Container(
        height: size,
        width: size,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeumorphicButton(
            onPressed: (){},
            style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50))
            ),
            child: Center(
              child: (
                  Text(num)
              ),
            ),

          ),
        ),
      ),
    );
  }
}