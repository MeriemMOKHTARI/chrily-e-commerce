import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:test/Vendor/Views/screens/main_vendors_screen.dart';
import 'package:test/Vendor/Views/screens/upload_tap_screens/attributes-tab_screens.dart';
import 'package:test/Vendor/Views/screens/upload_tap_screens/general_screen.dart';
import 'package:test/Vendor/Views/screens/upload_tap_screens/image_tab_screen.dart';
import 'package:test/Vendor/Views/screens/upload_tap_screens/shipping_screen.dart';
import 'package:uuid/uuid.dart';

import '../../../provider/product_provider.dart';

class UploadScreen extends StatelessWidget {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final ProductProvider _productProvider =
        Provider.of<ProductProvider>(context);

    return DefaultTabController(
      length: 4,
      child: Form(
        key: _formKey,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 231, 76, 60),
            elevation: 0,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text('General'),
                ),
                Tab(
                  child: Text('Shipping'),
                ),
                Tab(
                  child: Text('Attributes'),
                ),
                Tab(
                  child: Text('Images'),
                ),
              ],
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        Colors.white, // Couleur blanche pour la ligne indicatrice
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(children: [
            GeneralScreen(),
            ShippingScreeen(),
            AttributesTabScreen(),
            imagesTabScreen(),
          ]),
      
          bottomSheet: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              
              onPressed: () async {
                EasyLoading.show(status: 'Please Wait...');
                 if (_formKey.currentState!.validate()) {
                  final productId = Uuid().v4();
                  await _firestore.collection('products').doc(productId).set({
                    'productId': productId,
                    'productName': _productProvider.productData['productName'],
                    'productPrice':
                        _productProvider.productData['productPrice'],
                    'quantity': _productProvider.productData['quantity'],
                    'category': _productProvider.productData['category'],
                    'description': _productProvider.productData['description'],
                    'imageUrl': _productProvider.productData['imageUrlList'],
                    'scheduleDate':
                        _productProvider.productData['scheduleDate'],
                    'chargeShipping':
                        _productProvider.productData['chargeShipping'],
                    'shippingCharge':
                        _productProvider.productData['shippingCharge'],
                    'brandName': _productProvider.productData['brandName'],
                    'sizeList': _productProvider.productData['sizeList'],
                    'vendorId': FirebaseAuth.instance.currentUser!.uid,
                    'approved': false,
                  }).whenComplete(() {
                    _productProvider.clearData();
                    _formKey.currentState!.reset();
                    EasyLoading.dismiss();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return mainVendorsScreen();
                    }));
                  });
                }
              },
      
      
              
              child: Text('save'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 231, 76, 60),
            ),
          ),
      
        ),
      ),
    ),);
  }
}
