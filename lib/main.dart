import 'package:flutter/material.dart';
//import 'package:personal_manager/Dope_animations.dart';
import 'package:personal_manager/core/home_screen.dart';

import 'package:personal_manager/core/second_page.dart';
import 'package:personal_manager/core/third_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SecondPage.routeName : (context) => SecondPage(),
        ThirdPage.routeName: (context) => ThirdPage(),

             },
             onGenerateRoute: (settings){
              return MaterialPageRoute(
                builder: (context) => SecondPage(),
              );
             },
    );
  }
}