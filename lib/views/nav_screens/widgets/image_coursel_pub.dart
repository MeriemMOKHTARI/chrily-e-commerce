

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class image_carousel extends StatelessWidget {
  const image_carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
               color: Colors.black,

        ),
      height: 140.0,
     width:double.infinity,
      child: CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        viewportFraction: 1.0,
        autoPlay: true,
      ),
      items: [
        Image.asset('images/f2.png', fit: BoxFit.cover),
        //Image.asset('images/pb1.png', fit: BoxFit.cover),
        Image.asset('images/ee.png', fit: BoxFit.cover),
        Image.asset('images/gg.png', fit: BoxFit.cover),
        Image.asset('images/y.png', fit: BoxFit.cover),
      ],
      ),
    ),
    );
  }
}