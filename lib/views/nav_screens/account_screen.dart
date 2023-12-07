import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class accountScreen extends StatefulWidget {
  @override
  State<accountScreen> createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {
  var p = Color.fromARGB(255, 231, 76, 60);
  var b = Colors.black;
  var w = Colors.white;
  var g = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        // centerTitle: true,
        backgroundColor: p,
        title: Text(
          'Profile',
          style: TextStyle(letterSpacing: 4),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  b = b == Colors.black ? Colors.white : Colors.black;
                  w = w == Colors.white ? Colors.black : Colors.white;
                });
              },
              child: Icon(Icons.dark_mode_outlined,color: Colors.white,),
            ),
          ),
        ],
      ),
      body: Container(
        color: w,
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: CircleAvatar(
                radius: 64,
                backgroundColor: p,
                backgroundImage: AssetImage('images/me22.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Meriem MK',
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.bold, color: b),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'mokhtari.meriem13@gmail.com',
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: b),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                thickness: 2,
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: b),
              title: Text(
                'Settings',
                style: TextStyle(color: b),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone, color: b),
              title: Text(
                'Phone',
                style: TextStyle(color: b),
              ),
            ),
            ListTile(
              leading: Icon(Icons.shop, color: b),
              title: Text(
                'Cart',
                style: TextStyle(color: b),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.shopping_cart, color: b),
              title: Text(
                'Order',
                style: TextStyle(color: b),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: b),
              title: Text(
                'Logout',
                style: TextStyle(color: b),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
