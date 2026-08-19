import 'package:flutter/material.dart';
import 'package:personal_manager/second_page.dart';

import 'package:get/get.dart';

//the page where the resuable codes are written
import 'package:personal_manager/Widgets/widgets_page.dart';
 
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

//external functions need to be inside the class always remember that

class _HomeScreenState extends State<HomeScreen> {
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
      crossAxisAlignment: CrossAxisAlignment.center,
      
        children: [
            const SizedBox(height: 10,),
             Text("Smartly Manage your "
               ,style: MyStylings.getBlackTextStyle,
             ),
               Text("Tasks "
               ,style: MyStylings.getBlackTextStyle,
             ),

             const SizedBox(height: 15,),
            Text("your ultimate app to organize"
              , style: MyStylings.getLightTextStyle,
            
            ),
               Text("your Work"
              ,style: MyStylings.getLightTextStyle,
            
            ),

            const SizedBox(height: 20),
            ElevatedButton(onPressed:(){
               Get.to(

                ()=> const SecondPage(), 
                 transition: Transition.downToUp,
                 duration: const Duration(milliseconds: 1000),
               );
            },
            
               
          
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              //for  width and height we use the property minisize
              minimumSize: Size(200, 50),
              foregroundColor: Colors.white,
             ),
               child:Text( "Next") ,
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
              _WelcomeWidget(context),
           ],


        ))
    );
  }


 
  
  
}