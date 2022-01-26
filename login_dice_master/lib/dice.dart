import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Dice game'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    Expanded(child: Image.asset('image/dice$leftDice.png')),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(child: Image.asset('image/dice$rightDice.png'))
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: 130.0,
                height: 110.0,
                child: ElevatedButton(
                  child: Icon(Icons.play_arrow),
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                      rightDice = Random().nextInt(6) + 1;
                    });
                    showToast(
                        "Left dice: {$leftDice}, Right dice: {$rightDice}");
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                ),
              )
            ],
          ),
        ));
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.white,
      textColor: Colors.black54,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
