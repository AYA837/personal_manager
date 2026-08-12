import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

//external functions need to be inside the class always remember that

class _HomeScreenState extends State<HomeScreen> {
  //to control the dimension of the stupid element we built
  //everytime we press the button the width and height changes depending on what's inside the on pressed changes
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Foo Basics') , backgroundColor: Colors.pink,),
      body: Center(
        child: Column(
        ))
    );
  }
}