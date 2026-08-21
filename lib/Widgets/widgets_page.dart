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

//the wavy clipper class
class MyWavedClipper extends CustomClipper<Path> {
  @override

  //the size parameter is the size of the child in the clipper(width and height in the main widget )
 Path  getClip(Size size) {

   var path = Path();
   path.lineTo(0, size.height);
   var firstStart = Offset(size.width/5 , size.height);

   var firstEnd = Offset(size.width/2.25 , size.height - 50);

   path.quadraticBezierTo (firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

   var secondStart = Offset(size.width - ((size.width)/3) , size.height - 105);

   var secondEnd = Offset(size.width , size.height - 10 );

   

   //path.quadraticBezierTo(firstEnd.dx,firstEnd.dy, secondStart.dx, secondStart.dy);

   path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    
    path.lineTo(size.width, 0);
    path.close();

   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
    
}