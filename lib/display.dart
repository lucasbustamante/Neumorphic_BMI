import'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
      child: Row(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeumorphicButton(
                onPressed: (){},
                child: Text('Lucas'),
                style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30))
                ),
              ),
              NeumorphicButton(
                onPressed: (){},
                child: Text('Lucas'),
                style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30))
                ),
              ),
            ],
          ),
        ],
      ),),
    );
  }
}
