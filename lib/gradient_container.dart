import 'package:flutter/material.dart';
import 'package:dice_roller/dice_roller.dart';

//variable is assigned of const  type cause we not going to reassign it again
const startAlignment = Alignment.topRight;
const endAlignment = Alignment.topLeft;

//GradientContainer is Custom Widget that is inherited from StatelessWidget class

class GradientContainer extends StatelessWidget 
{

  // to take key values from StatelessWidget class
  //we used const here so that we can use this widget multiple time without creating new memory location for same values
   const GradientContainer({
    super.key,
    required this.colors,
    });

    //bg color 
    final List<Color> colors;

    
    @override
    Widget build(context) {
    return Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),

      child: Center(
        child:  DiceRoller(),
        ),
    );
  }
}
