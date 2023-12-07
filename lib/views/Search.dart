import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'apple',
    'banana',
    'pear',
    'oranges',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return 
      IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back),
      );
    
  }

  @override
    Widget buildResults(BuildContext context) {

  List<String> matchQuery=[];
    for (var fruits in searchTerms){
      if ( fruits.toLowerCase().contains(query.toLowerCase())){
matchQuery.add(fruits);
      }
    }
  return ListView.builder(itemCount: matchQuery.length,itemBuilder: (context,index){
    var result = matchQuery[index];
  return ListTile(
    title: Text(result),
    );
  },
  );
  }

 
  
  @override
  Widget buildSuggestions(BuildContext context) {
  List<String> matchQuery=[];
    for (var fruits in searchTerms){
      if ( fruits.toLowerCase().contains(query.toLowerCase())){
matchQuery.add(fruits);
      }
    }
return ListView.builder(itemCount: matchQuery.length,itemBuilder: (context,index){
    var result = matchQuery[index];
  return ListTile(
    title: Text(result),
    );
  },
  );
  }
  }


  //  appBar: AppBar(
  //       title: Text('Chrily'),
  //       actions: [
  //         IconButton(onPressed: (){
  //           showSearch(context: context,
  //            delegate: CustomSearchDelegate());
  //         },
  //          icon: Icon(Icons.search))