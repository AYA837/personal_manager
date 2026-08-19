//search delegate is a class that handles searches without having to use textfield and so on

//it's a class we will create our own that inherits from it

//and override the 4 commun functions

import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  //the available search options for the user
  final listOfSearches = ["Tasks", "Projects", "Calender", "Diary", "Notes"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    //the search Icon for the bar
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }


  //the widget below is for icon button  functionality

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      Navigator.pop(context);
    },
     icon: AnimatedIcon(icon: icon,
     
      progress: progress
      
      ),
     
     );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    throw UnimplementedError();
  }
}
