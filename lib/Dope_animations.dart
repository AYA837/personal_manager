import 'package:flutter/material.dart';


import 'package:get/get.dart';

//the page where the resuable codes are written
import 'package:personal_manager/Widgets/widgets_page.dart';
 
class DopeAnimations extends StatefulWidget {
  const DopeAnimations({super.key});

  @override
  _DopeAnimationsState createState() => _DopeAnimationsState();
}

//external functions need to be inside the class always remember that

class _DopeAnimationsState extends State<DopeAnimations> {
  //to control the dimension of the stupid element we built
  //everytime we press the button the width and height changes depending on what's inside the on pressed changes
 
  Widget _WelcomeWidget(BuildContext context){

    return Container(
        margin: EdgeInsets.only(
            left: 40,
            right: 40,
            bottom:40,
        ),
        padding: EdgeInsets.all(20),
     
     width: double.infinity,
    height: 300,
    
     //always remember the color property shouldn't be the same with the decoration property
     decoration: MyStylings.mydecoration,
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,));
      
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    );
  }


 
  
  
}