import 'dart:math';
import 'package:flutter/material.dart';

class SevenUpDown extends StatefulWidget {
  const SevenUpDown({super.key});
  @override
  _SevenUpDownState createState() {
    return _SevenUpDownState();
  }
}

class _SevenUpDownState extends State<SevenUpDown> {
  int diceValue1 = 1;
  int diceValue2 = 1;
  String result = '';

  void rollDice(int chosenSum) {
    setState(() {
      diceValue1 = Random().nextInt(6) + 1;
      diceValue2 = Random().nextInt(6) + 1;
      int total = diceValue1 + diceValue2;

      if ((chosenSum ==7 &&total > 7)||(chosenSum ==-7 &&total < 7)) {
        result = 'Congratulations! You won. Total: $total';
      } else if ((chosenSum ==7 && total == 7)||(chosenSum ==-7 && total == 7)) {
        result = 'Go again. Total: $total';
      } else {
        result = 'Oops! You lost. Total: $total';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/dice-$diceValue1.png',
                width: 180, height: 180),
            Image.asset('assets/images/dice-$diceValue2.png',
                width: 180, height: 180)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20,width: 23,),
            TextButton(
              onPressed: () => rollDice(7),
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 20)),
              child: const Text('7 Up'),
            ),
            const SizedBox(height: 20,width: 60,),
            TextButton(
              onPressed: () => rollDice(-7),
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 20)),
              child: const Text('7 Down'),
            ),
            const SizedBox(height: 20,width: 18,),
          ],
        ),
        const SizedBox(
          height: 20,
          width: 100,
        ),
        Text(
          result,
          style: const TextStyle(fontSize: 18, color: Colors.amber),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
