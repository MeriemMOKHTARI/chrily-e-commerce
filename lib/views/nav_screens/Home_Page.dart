import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test/views/Shared/ItemWidget.dart';
import 'package:test/views/Shared/product_card.dart';
import 'package:test/views/nav_screens/Category_Page.dart';
import 'package:test/views/nav_screens/widgets/banners.dart';
import 'package:test/views/nav_screens/widgets/categories.dart';
import 'package:test/views/nav_screens/widgets/category_text.dart';
import 'package:test/views/nav_screens/widgets/image_coursel_pub.dart';
import 'package:test/views/nav_screens/widgets/search_input.dart';
import 'package:test/views/nav_screens/widgets/welcome_text.dart';
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
    return SafeArea(
      child: ListView(
        children: <Widget>[
          WwlcomeText(),

          // SizedBox(height: 14,),
          SearchInput(),
          //  banners(),
          SizedBox(
            height: 12,
          ),
          BannerWidget(),

          ///hoonnn

          // image_carousel(),
          Container(
            //color: s,
            child: Padding(
              padding: EdgeInsets.only(
                left: 8,
                // top: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryText(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryScreen()),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            'See all ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 231, 76, 60),
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color.fromARGB(255, 231, 76, 60),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
          categories(),

          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: TextStyle(
                    color: b,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    //  fontFamily: 'NotoSansVithkuqi-SemiBold'
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'See all ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 231, 76, 60),
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color.fromARGB(255, 231, 76, 60),
                    ),
                  ],
                )
              ],
            ),
          ),

          //  ItemWidgets()
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: GridView.count(
              childAspectRatio: 0.73,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),

              // mainAxisSpacing: 8.0,
              // crossAxisSpacing: 10.0,
              children: [
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.405,
                //   child:
                // ListView.builder(
                //   itemCount: 6,
                //   scrollDirection: Axis.vertical,
                //   itemBuilder: (context,index){
                //   return

                ProductCard(
                    name: "JIQI Mixer",
                    category: "Shoes",
                    id: "1",
                    image: "images/p1.jpg",
                    price: "\$36.50"),
                    
                    ProductCard(
                    name: "Baby Stroller",
                    category: "Shoes",
                    id: "1",
                    image: "images/j.jpg",
                    price: "\$138.26"),
                // })
                // ),

                ProductCard(
                    name: "Men's Polo Shirt",
                    category: "Shoes",
                    id: "1",
                    image: "images/coste.jpg",
                    price: "\$8.12"),
                     ProductCard(
                    name: "P9 Pro Max",
                    category: "Shoes",
                    id: "1",
                    image: "images/csc.jpg",
                    //pp1.jpg",
                    price: "\$18.95"),

                ProductCard(
                    name: "Garden Plant",
                    category: "Shoes",
                    id: "1",
                    image: "images/hchich.jpg",
                    price: "\$8.36"),

                ProductCard(
                    name: "Camping Chair",
                    category: "Shoes",
                    id: "1",
                    image: "images/cm.jpg",
                    price: "\$15.45"),
                    
                    ProductCard(
                    name: "Toothbrush",
                    category: "Shoes",
                    id: "1",
                    image: "images/oral.jpg",
                    price: "\$3.33"),

               
                ProductCard(
                    name: "Watch 9",
                    category: "Shoes",
                    id: "1",
                    image: "images/kl.jpg",//
                    price: "\$17.14"),
                ProductCard(
                    name: "Alarm Clock",
                    category: "Shoes",
                    id: "1",
                    image: "images/lu.jpg",//reveil
                    price: "\$17.79"),

                
                ProductCard(
                    name: "Water Bottle",
                    category: "Shoes",
                    id: "1",
                    image: "images/le.jpg",
                    price: "\$6.83"),
                ProductCard(
                    name: "3D Wall Clock",
                    category: "Shoes",
                    id: "1",
                    image: "images/sa3a.jpg",
                    price: "\$4.75"),
                ProductCard(
                    name: "OverHoodies",
                    category: "Shoes",
                    id: "1",
                    image: "images/cute.jpg",
                    price: "\$3.58"),
                    

                ProductCard(
                    name: "Backpack",
                    category: "Shoes",
                    id: "1",
                    image: "images/crtbl.jpg",
                    price: "\$11.72"),
                    ProductCard(
                    name: "TWS M90",
                    category: "Shoes",
                    id: "1",
                    image: "images/kitman.jpg",
                    price: "\$6.53"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
