import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:test/Controlleurs/mainscreen_provider.dart';

import 'views/Search.dart';
class Mainscreen_old extends StatefulWidget {
  const Mainscreen_old({super.key});

  @override
  State<Mainscreen_old> createState() => _Mainscreen_oldState();
}

class _Mainscreen_oldState extends State<Mainscreen_old> {
   var p = Color.fromRGBO(248, 201, 171, 1.0);
  var r = Color.fromARGB(255, 235, 136, 134);
  var s = Color(0xFFFCE4BB);
  var b = Colors.black;
  var w = Colors.white;
// List<Widget> pageList = [
//   MyHomePage(),
//   CategoryPage(),
//   CartPage(),
//   ProfilePage(),

// ];

  
  @override
  Widget build(BuildContext context) {
    
    return Consumer<MainScreenNotifier>(
      builder: (context,mainScreenNotifier,child){
        return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chrily',
          style: TextStyle(
              fontFamily: 'YsabeauSC',
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                setState(() {
                  b = b == Colors.black ? Colors.white : Colors.black;
                  w = w == Colors.white ? Colors.black : Colors.white;
                });
              },
              icon: Icon(Icons.notifications_active_outlined)),
        ],
        backgroundColor: p,
      ),
      // body: pageList[mainScreenNotifier.pageIndex],
      // bottomNavigationBar:  BottNavBar(),
    );});
      
  }
}

Widget image_carousel = Container(
  height: 200.0,
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
);
/*Widget category_cursel = Container(
  height: 200.0,
  color: Color(0xFFFCE4BB),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     
      SingleChildScrollView( // Use SingleChildScrollView here
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(cardItems.length, (index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 0 : 12),
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child:AspectRatio(aspectRatio: 4/3,
                      child:
                      Image.asset(
  cardItems[index].imagePath ?? 'images/default_image.jpeg',
  fit: BoxFit.cover,
),),),
                    
                    SizedBox(height: 8),
                    Text(cardItems[index].text),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    ],
  ),*/

      
      