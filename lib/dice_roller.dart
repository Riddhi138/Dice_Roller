import 'package:flutter/material.dart';
import 'dart:math';

 //Random fun. to generate random values provided by math class in Dart
final randomValue = Random();

//Stateful widget so to change ui with changing value
class DiceRoller extends StatefulWidget
{
  const DiceRoller({super.key});
    @override
    State<DiceRoller> createState() 
    {
      return _DiceRollerState();
    }
}

//private class start with _in Dart lang. and isn't  accessible in other files
class _DiceRollerState extends State<DiceRoller>
{
  
  //to roll the dice or to shift the images when click on the button 
  var currentDiceRoll = 2;

  //Function onclick of roll dice
    void rollDice() {

 
  // max value is 6 and start from 1
         

  //setState so that when the bulid fuction in called it will update the UI
  setState(() 
  {
      currentDiceRoll = randomValue.nextInt(6) +1;
  }
  );
  }
  
  @override
  Widget build(context)
   {
       return  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
             'lib/assets/images/dice-$currentDiceRoll.png', 
              width: 200
              ),

            // space widget
            const SizedBox(height: 20),

            //add button
            TextButton(
              onPressed: rollDice, 

              style: TextButton.styleFrom(
                //padding: EdgeInsets.only(top: 25),
                foregroundColor: const Color.fromARGB(255, 255, 255, 69),
                textStyle: const TextStyle(fontSize: 28)
                ),

              child: const Text('Roll Dice')
              ),
          ],
        );

   } 
}