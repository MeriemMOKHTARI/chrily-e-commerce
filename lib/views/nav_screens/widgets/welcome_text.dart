import 'package:flutter/material.dart';
import 'package:test/views/nav_screens/Cart_Page.dart';

class WwlcomeText extends StatelessWidget {
  const WwlcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    
         double topPadding = MediaQuery.of(context).padding.top;
     EdgeInsetsGeometry padding = EdgeInsets.only(top: topPadding, left: 20, right: 15);
    return 
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Meriem , What Are You\n Looking For 👀',style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold
                  ),),
                  Container(child:
                   TextButton(onPressed: 
                    () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CartPage()),
                        );
                      },
                    child: Icon(Icons.shopping_cart_outlined,color: Colors.black,)),width: 20.0),
                ],
              ),
            );
            
          
  }
}