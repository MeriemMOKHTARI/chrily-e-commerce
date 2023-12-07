import 'package:flutter/material.dart';

class MyProducts extends StatefulWidget {
  const MyProducts({super.key});

  @override
  State<MyProducts> createState() => _MyProductsState();
}

class _MyProductsState extends State<MyProducts> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
     childAspectRatio: 0.50,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i <= 8; i++)
          Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
           margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
      ],
    );

    // Padding(
    //   padding: EdgeInsets.all(2.0),
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(16),
    //     child:
    //     Container(
    //       decoration: BoxDecoration(
    //         boxShadow: [
    //           BoxShadow(
    //             color: Colors.white,
    //             offset: Offset(1, 1),
    //             blurRadius: 0.6,
    //             spreadRadius: 1,
    //           ),
    //         ],
    //       ),
    //       child:Container(
    //         height: 150,
    //         color: Colors.amber,
    //       ),),),);
  }
}
