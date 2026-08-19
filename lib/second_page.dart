
import 'package:flutter/material.dart';
import 'package:personal_manager/Widgets/widgets_page.dart';
import 'package:personal_manager/third_page.dart';
import 'package:get/get.dart';
//hello world

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
             Text("Manage Your Tasks  "
               ,style: MyStylings.getBlackTextStyle,
             ),
               Text("With Us Now "
               ,style: MyStylings.getBlackTextStyle,
             ),

             const SizedBox(height: 15,),
            Text("your ultimate app to organize"
              ,style: MyStylings.getLightTextStyle,
            
            ),
               Text("your Work"
              ,style: MyStylings.getLightTextStyle),
            
            

            const SizedBox(height: 20),
            ElevatedButton(onPressed:(){

              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const ThirdPage(),
                  ),
                );
            },
            
               
          
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              //for  width and height we use the property minisize
              minimumSize: Size(200, 50),
              foregroundColor: Colors.white,
             ),
               child:Text( "Get Started") ,
             )

        ],
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,

      //we will be implmenting tween in this page
      //tween animates according to a given  starting point and an ending point

      body: 
          Center(
        child: Column(
           children: [
              Spacer(flex: 2,),
              _WelcomeWidget(context),
           ],


        ))
        
        
        );
        
        
        
}
        
        
        
}
