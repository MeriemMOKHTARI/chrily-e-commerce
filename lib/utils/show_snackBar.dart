import 'package:flutter/material.dart';

showSnackBar(context,String title){
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(   backgroundColor://Colors.red,
  Color.fromARGB(255, 235, 136, 134),

     content: Text(title,style: TextStyle(fontWeight: FontWeight.bold),)));
}