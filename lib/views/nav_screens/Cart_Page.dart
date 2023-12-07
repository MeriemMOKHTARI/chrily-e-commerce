import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import this line

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

var p = Color.fromARGB(255, 231, 76, 60);
var p2 = Color.fromARGB(255, 255, 87, 51);

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    // Set the status bar color here
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: p, // Set the color you want here
    ));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: p,
          title: Text(
            'Cart',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Shopping Cart is Empty',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    color: p,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  'CONTINUE SHOPPING',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
