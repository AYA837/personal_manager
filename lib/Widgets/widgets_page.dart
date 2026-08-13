import 'package:flutter/material.dart';

class MyStylings {
  
    static BoxDecoration mydecoration =  BoxDecoration(
     borderRadius: BorderRadius.circular(25),
     color: Colors.white,
    );

 static  TextStyle getLightTextStyle = TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w200,
        
        color: const Color.fromARGB(255, 69, 63, 63),
    );
  
 static TextStyle getBlackTextStyle = TextStyle(
         fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
 );
}