import 'package:flutter/material.dart';
//import 'package:personal_manager/Widgets/widgets_page.dart';
import 'package:intl/intl.dart';

// hello world

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  DateTime todayDate = DateTime.now();

  String get formattedDate =>
      DateFormat(' d MMMM yyyy').format(todayDate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 40,
                top: 60,
              ),
              child: Text(
                formattedDate,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topLeft,
            child: Container(
              
              margin: const EdgeInsets.only(
                left: 45,
                top: 10,
              ),
              child: const Text(
                "Welcome Back Aya!",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}