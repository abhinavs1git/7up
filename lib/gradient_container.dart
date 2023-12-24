import 'package:first_one/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colored1, this.colored2, this.colored3,
      {super.key});
  final Color colored1;
  final Color colored2;
  final Color colored3;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colored1, colored2, colored3],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child:const Center(
          child:
              SevenUpDown()
            
    ));
  }
}
