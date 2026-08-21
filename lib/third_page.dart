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
      body: Stack(

        children: [
           ClipPath(

            clipper: MyWavedClipper(), //IT's defined in the re-usable widgets file

            child: Container(
              color: Colors.pinkAccent,
              width: 450,
              height: 450,
            ),
           )
        ],
      ),
      
      
      );
  }
}