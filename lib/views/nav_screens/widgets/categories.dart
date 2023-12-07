import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/Controlleurs/mainscreen_provider.dart';
import 'package:test/views/nav_screens/Category_Page.dart';

class categories extends StatefulWidget {
  categories({super.key});
  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  final List<String> _categoryImage = [];
  final FirebaseFirestore _firestor = FirebaseFirestore.instance;
  final List<String> _categoryTitel = [];

  getbanners() {
    return _firestor
        .collection('categories')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        setState(() {
          _categoryTitel.add(doc['categoryName']); // Add titles to the list
          _categoryImage.add(doc['image']);
        });
      });
    });
  }

  @override
  void initState() {
    getbanners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        child: ListView.builder(
            itemCount: _categoryImage.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return

                  //hoonn
                  Padding(
                padding: EdgeInsets.all(6.0),
                child: Column(
                  children: [
                  GestureDetector(
                    onTap:  () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CategoryScreen()),);},
  

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
                        child: Image.network(
                          _categoryImage[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Text(_categorylabel[index]),
                    Text(
                      _categoryTitel[index],
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }),
      );
    });
  }
}
