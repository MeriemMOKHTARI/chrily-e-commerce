import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/Vendor/Views/screens/earnings_screen.dart';
import 'package:test/Vendor/Views/screens/edit_product_screen.dart';
import 'package:test/Vendor/Views/screens/upload_screen.dart';
import 'package:test/Vendor/Views/screens/vendor_logout_screen.dart';
import 'package:test/Vendor/Views/screens/vendor_order_screen.dart';

class mainVendorsScreen extends StatefulWidget {
   mainVendorsScreen({super.key});

  @override
  State<mainVendorsScreen> createState() => _mainVendorsScreenState();
}

class _mainVendorsScreenState extends State<mainVendorsScreen> {
var p = Color.fromARGB(255, 231, 76, 60);
  int _pageIndex = 0;

  List<Widget> _pages = [
    EarningScreen(),
    UploadScreen(),
    EditProductScreen(),
    VendorOrderScreen(),
    VendorLogoutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: p,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.money_dollar),
            label: 'EARNINGS',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.upload),
              label: 'UPLOAD',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: 'EDIT',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart),
              label: 'ORDERS',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'LOGOUT',
            ),
     
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}