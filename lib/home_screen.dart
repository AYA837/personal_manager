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
 
  Widget _WelcomeWidget(){

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
     decoration: _getBoxDecoration(),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      
        children: [
            const SizedBox(height: 10,),
             Text("Smartly Manage your "
               ,style: _getTextStyle(),
             ),
               Text("Tasks "
               ,style: _getTextStyle(),
             ),

             const SizedBox(height: 5,),
            Text("your ultimate app to organize your personal work"
              ,style: _getLightTextStyle(),
            
            )

        ],
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
           children: [
              Spacer(flex: 2,),
              _WelcomeWidget(),
           ],


        ))
    );
  }
  TextStyle _getTextStyle(){
     return const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
     );
  }

  BoxDecoration _getBoxDecoration(){
    return BoxDecoration(
         borderRadius: BorderRadius.circular(25),
         color: Colors.white,
    );
  }
  
  TextStyle _getLightTextStyle(){
    return TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w200,
        fontFamily: ,
        color: const Color.fromARGB(255, 69, 63, 63),
    );
  }
}