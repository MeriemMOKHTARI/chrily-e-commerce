import 'package:flutter/material.dart';
import 'package:test/views/Shared/appstyle.dart';

class HorizantalList extends StatelessWidget {
   var b = Colors.black;
  var w = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.12,
      width: MediaQuery.of(context).size.width*0.28,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          category(
              imagePath: 'images/print3D.jpg',
              imageCaption: 'Consumer Electronics'),
          category(
              imagePath: 'images/clock.jpg', imageCaption: 'Wearable Devices'),
          category(
              imagePath: 'images/toys.jpg', imageCaption: 'Toys & Hobbies'),
          category(
              imagePath: 'images/sport.jpg', imageCaption: 'Sport & Outdoors'),
          category(imagePath: 'images/beauty.jpg', imageCaption: 'Beauty'),
          category(
              imagePath: 'images/airpods.jpg',
              imageCaption: 'Phone Accessoires'),
          category(imagePath: 'images/bike.jpg', imageCaption: 'Smart Bikes'),
        ],
      ),
    );
  }
}

class category extends StatelessWidget {
  final String imagePath;
  final String imageCaption;
var b = Colors.black;
  var w = Colors.white;
  category({required this.imagePath, required this.imageCaption});
  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: () {},
        child: Container(
          decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(0, 1),
                  blurRadius: 0.8,
                  spreadRadius: 1,
                ), ],
            ),
          width: MediaQuery.of(context).size.width*0.28,
          height: MediaQuery.of(context).size.height*0.12,
          child:  TextButton(
            onPressed: (){},
            child: Column(
              children: [
                Image.asset(imagePath, fit: BoxFit.cover),
                Text(
                imageCaption,
                textAlign: TextAlign.center,
                style:appstyle(13.0, b, FontWeight.w600),
                    
              ),
              ],
            ),
            
            ),
          ),
        
    
    );
  }
}
