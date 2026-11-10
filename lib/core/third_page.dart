import 'package:flutter/material.dart';
import 'package:personal_manager/Widgets/widgets_page.dart';
import 'package:intl/intl.dart';


// hello world

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  DateTime todayDate = DateTime.now();

  String get formattedDate =>
      DateFormat(' d MMMM yyyy').format(todayDate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
           Container(
            margin: EdgeInsets.only(top: 100),

             child: CustomPaint(
              painter: MyBackgroundPainter(),
              size: const Size(100 , 100),
              
             ),
           ),

            const SizedBox(height: 45,),
          /* ClipPath(
                
            clipper: MyWavedClipper(), //IT's defined in the re-usable widgets file

            child: Container(
              color: Colors.pinkAccent,
              width: 450,
              height: 450,
            ),
           ),
           */
          Container(
           // alignment: Alignment.center,
           // padding: EdgeInsets.fromLTRB(150, 500, 5, 10),
            
            
            child: FloatingText(text: "Welcome",)), 
            
        ],
      ),
      
      
      );
  }
}