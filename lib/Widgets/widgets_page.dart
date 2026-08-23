import 'package:flutter/material.dart';

//COMMUN TEXT STYLINGS AND DECORATIONS

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

//a CLASS FOR FLOATING TEXTS ANIMATIONS

class FloatingText extends StatefulWidget {

  final String text;
  const FloatingText({super.key ,required  this.text});

  @override
  State<FloatingText> createState() => _FloatingTextState();
}

class _FloatingTextState extends State<FloatingText>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    animation = Tween<double>(
      begin: 0,
      end: -10,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );
  }


  //dispose will clean what the controller has created after done with animation
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, animation.value),
          child: child,
        );
      },
      child: const Text(
        "Organize All in One",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MyBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = const Color.fromARGB(255, 242, 148, 148);
    Offset center = Offset(size.width/2 , size.height / 2);

    canvas.drawCircle(center, 10, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
     
}