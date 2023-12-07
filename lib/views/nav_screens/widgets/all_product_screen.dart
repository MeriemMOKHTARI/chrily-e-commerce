import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test/views/Shared/product_card.dart';

class AllProductScreen extends StatelessWidget {
  final dynamic categoryData;

  const AllProductScreen({Key? key, required this.categoryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _productsStream = FirebaseFirestore.instance
        .collection('products')
        .where('category', isEqualTo: categoryData['categoryName'])
        .where('approved', isEqualTo: true)
        .snapshots();

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color.fromARGB(255, 231, 76, 60),
        title: Text(
          categoryData['categoryName'],
          style: TextStyle(
            letterSpacing: 6,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: GridView.count(
            childAspectRatio: 0.73,
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 10.0,
            shrinkWrap: true,
            children: [
              ProductCard(
                name: "Spinning Bicycle",
                category: "Shoes",
                id: "1",
                image: "images/bikec.jpg",
                price: "\$86.28",
              ),
              ProductCard(
                name: "Basketball Balls",
                category: "Shoes",
                id: "1",
                image: "images/bskt.jpg",
                price: "\$18.87",
              ),
              
                ProductCard(
                    name: "Chin Up Bar",
                    category: "Shoes",
                    id: "1",
                    image: "images/gaeda2.jpg",
                    price: "\$64.56"),
                // })
                // ),

                ProductCard(
                    name: "Barbell Fitness",
                    category: "Shoes",
                    id: "1",
                    image: "images/fitns.jpg",
                    price: "\$15.47"),

                ProductCard(
                    name: "Gym Elastoplast",
                    category: "Shoes",
                    id: "1",
                    image: "images/dhar.jpg",
                    price: "\$20.00"),

                ProductCard(
                    name: "Sport Shoes",
                    category: "Shoes",
                    id: "1",
                    image: "images/godas.jpg",
                    price: "\$20.00"),

                ProductCard(
                    name: "Adidas NMD",
                    category: "Shoes",
                    id: "1",
                    image: "images/j.jpg",
                    price: "\$20.00"),
                ProductCard(
                    name: "Adidas NMD",
                    category: "Shoes",
                    id: "1",
                    image: "images/kl.jpg",
                    price: "\$20.00"),
                ProductCard(
                    name: "Adidas NMD",
                    category: "Shoes",
                    id: "1",
                    image: "images/lu.jpg",
                    price: "\$20.00"),

                ProductCard(
                    name: "Adidas NMD",
                    category: "Shoes",
                    id: "1",
                    image: "images/la.jpg",
                    price: "\$20.00"),
                ProductCard(
                    name: "Adidas NMD",
                    category: "Shoes",
                    id: "1",
                    image: "images/le.jpg",
                    price: "\$20.00"),
                ProductCard(
                    name: "Adidas NMD",
                    category: "Shoes",
                    id: "1",
                    image: "images/li.jpg",
                    price: "\$20.00"),
                ProductCard(
                    name: "Adidas NMD",
                    category: "Shoes",
                    id: "1",
                    image: "images/lo.jpg",
                    price: "\$20.00"),

                ProductCard(
                    name: "Adidas NMD",
                    category: "Shoes",
                    id: "1",
                    image: "images/k.jpg",
                    price: "\$20.00"),
              
              // Add more ProductCard widgets here
            ],
          ),
        ),
      ),
    );
  }
}

