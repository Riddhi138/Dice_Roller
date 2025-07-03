import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget{

  //this.text accept values in constructor fuction points to same var text in class stores the value and
  // use value inside widget instead of writing hardcore value but dynamically defining it
 const CustomTextWidget(this.text,{super.key});    

 final String text;
  @override
  Widget build(context) {
   return Text(
              text,
              style: const TextStyle(
                color: Colors.white, 
                fontSize: 28,
              
                ),
                ) ;
    
  }
} 