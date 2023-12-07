import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:test/Controlleurs/mainscreen_provider.dart';

class BottNavBar extends StatelessWidget {

  @override
  var po = Color.fromRGBO(248, 201, 171, 1.0);
  var r = Color.fromARGB(255, 235, 136, 134);
  var s = Color(0xFFFCE4BB);
     //var p = Color(0x0074e4);
       var p = Color.fromARGB(255, 231, 76, 60);
       var p2= Color.fromARGB(255, 255, 87, 51);

  var b = Colors.black;
  var w = Colors.white;
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return SafeArea(
          child: Container(
            
            color: w,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
              child: Container(
                
                child: GNav(
                  //gap:1,
                  activeColor: Colors.white,
                  backgroundColor: Colors.white,
                  tabBackgroundColor: p,
                  padding: EdgeInsets.all(12),
                  tabs: [
                    GButton(
                      onPressed: ()
                      {
                        mainScreenNotifier.pageIndex=0;
                      },
                      icon: Icons.home_outlined,
                      iconColor: p,
                      text: 'Home',
                    ),
                    GButton(
                      onPressed: ()
                      {
                        mainScreenNotifier.pageIndex=1;
                      },
                      icon: Icons.category_outlined,
                      iconColor: p,
                      text: 'Categories',///i want to change family font here 
                    ),
                    GButton(
                      onPressed: ()
                      {
                        mainScreenNotifier.pageIndex=2;
                      },
                      icon: Icons.shopping_cart_outlined,
                      iconColor: p,
                      text: 'Cart',
                    ),
                    GButton(
                      onPressed: ()
                      {
                        mainScreenNotifier.pageIndex=3;
                      },
                      icon: Icons.person_outline,
                      iconColor: p,
                      text: 'Account',
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      
    );
  }
}