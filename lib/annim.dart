import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test/views/Shared/appstyle.dart';

class annim extends StatefulWidget {
  const annim({super.key});

  @override
  State<annim> createState() => _annimState();
}

class _annimState extends State<annim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Chrily',style:appstyle1(39, Colors.red, FontWeight.bold)
            //  TextStyle(fontSize: 35,fontWeight: FontWeight.bold)
            ,),
            Lottie.network(
'https://lottie.host/4ac0215f-3ec8-45b4-b1b7-12a076f8f27f/XDm7YUbmM3.json'
            ),
          ],
        ),
      ),
    );
  }
}