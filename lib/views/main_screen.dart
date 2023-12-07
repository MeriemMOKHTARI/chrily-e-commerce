import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:test/Controlleurs/mainscreen_provider.dart';
import 'package:test/views/Shared/BottomNavBar.dart';

// import 'Search.dart';
import 'nav_screens/Cart_Page.dart';
import 'nav_screens/Category_Page.dart';
import 'nav_screens/Home_Page.dart';
import 'nav_screens/account_screen.dart';

// ignore: depend_on_referenced_packages
class Mainscreen extends StatefulWidget {
  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  List<Widget> pageList = [
  MyHomePage(),
  // CategoryPage(),
  CategoryScreen(),
  CartPage(),
  accountScreen(),

];
  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
         
      return Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     'Chrily',
        //     style: TextStyle(
        //         fontFamily: 'YsabeauSC',
        //         fontWeight: FontWeight.bold,
        //         fontSize: 30),
        //   ),
        //   actions: [
        //     IconButton(
        //         onPressed: () {
        //           showSearch(
        //               context: context, delegate: CustomSearchDelegate());
        //         },
        //         icon: Icon(Icons.search)),
        //     IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.notifications_active_outlined)),
        //   ],
        //   backgroundColor: Color.fromRGBO(248, 201, 171, 1.0),
        // ),
        //body: pageList[mainScreenNotifier.pageIndex],
        body: pageList[mainScreenNotifier.pageIndex],
              bottomNavigationBar:
              BottNavBar(),
//                ClipRRect(
//             child: GNav(
//               backgroundColor: Colors.white,
//               color: Color(0xFF0097B2),
//               activeColor: Colors.white,
//               gap: 8,
//               tabBackgroundColor: Color(0xFF0097B2),
//               onTabChange: (index) {
//                 setState(() {
//                   // _pageIndex.jumpToPage(index);
//                 });
//               },
//               // ignore: prefer_const_literals_to_create_immutables
//               tabs: [
//                 GButton(
//                   icon: Icons.home,
//                   text: 'Home',
//                   padding: EdgeInsets.all(10),
//                   margin: EdgeInsets.all(10),
//                 ),
//                 GButton(
//                   icon: Icons.category,
//                   text: 'Categories',
//                   padding: EdgeInsets.all(10),
//                   margin: EdgeInsets.all(10),
//                 ),
//                 GButton(
//                   icon: Icons.location_on,
//                   text: 'Location',
//                   padding: EdgeInsets.all(10),
//                   margin: EdgeInsets.all(10),
//                 ),
//                 GButton(
//                   icon: Icons.settings,
//                   text: 'Settings',
//                   padding: EdgeInsets.all(10),
//                   margin: EdgeInsets.all(10),
//                 ),
//               ],
//             ),
//           ),
        

      );
    });
  }
}
