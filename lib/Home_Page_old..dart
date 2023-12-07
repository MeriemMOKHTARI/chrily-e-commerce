import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test/views/Shared/ItemWidget.dart';
import 'package:test/views/Shared/horiz_ListView.dart';
import 'package:test/views/Shared/product_card.dart';
// import 'package:test/views/Shared/appstyle.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  var p = Color.fromRGBO(248, 201, 171, 1.0);
  var r = Color.fromARGB(255, 235, 136, 134);
  var s = Color(0xFFFCE4BB);
  var b = Colors.black;
  var w = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: w,
      child: ListView(
        children: <Widget>[
          image_carousel,
          Container(
            //color: s,
            child: Padding(
              padding: EdgeInsets.only(
                left: 8,
                top: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot Gategories",
                    style: TextStyle(
                        color: b,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'NotoSansVithkuqi-SemiBold'),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'View all ',
                            style: TextStyle(color: b),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                            color: b,
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0, 1),
                          blurRadius: 0.8,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 0.28,
                    child: Image.asset('images/toys.jpg'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              'Best Selling',
              style: TextStyle(
                  color: b,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'NotoSansVithkuqi-SemiBold'),
            ),
          ),
          //  ItemWidgets(),
          Padding(
            padding: EdgeInsets.all(8),
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 10.0,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 160 ,
                      child: ProductCard(name: "Adidas NMD" ,
                       category: "Shoes", 
                       id: "1", 
                       image: "images/h.jpg",
                        price: "\$20.00")
                    ),
                     SizedBox(
                      height: 165 ,
                      // width: 250,
                      child: ProductCard(name: "Adidas NMD" ,
                       category: "Shoes", 
                       id: "1", 
                       image: "images/h.jpg",
                        price: "\$20.00")
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
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
