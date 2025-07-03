import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';
void main()
{
 runApp(
     const  MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 49, 6, 66), 
            Color.fromARGB(255, 67, 19, 99)]),
          ),
    ),
  );
}
