import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:test/Controlleurs/mainscreen_provider.dart';
import 'package:test/Vendor/Views/auth/vendor_registration_screen.dart';
import 'package:test/annim.dart';
import 'package:test/provider/product_provider.dart';
import 'package:test/views/buyers/auth/Register_screen.dart';
import 'package:test/views/buyers/auth/login_screen.dart';
import 'package:test/views/main_screen.dart';
import 'Vendor/Views/screens/main_vendors_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) {
      return MainScreenNotifier();

      //  ProductProvider();
    }
        //  (context) => MainScreenNotifier()
        ),
    ChangeNotifierProvider(create: (_) {
      return ProductProvider();
    }),
  ], child: const MyApp()));
}

var p = Color.fromARGB(255, 231, 76, 60);
var p2 = Color.fromARGB(255, 255, 87, 51);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// #FFC000 (Jaune ambré)    Rouge brique : #E74C3C   Orange brûlé : #FF7033<<<  Rouge vif : #FF5733

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My e-commerce',
      theme: ThemeData(
        // primarySwatch: Color(0xEB8886),
        fontFamily: 'Brand-Bold',
      ),
      home:
// annim()     ,
    //  LoginScreen(),
          // buyerRegisterScreen(),
          // Mainscreen(),
      mainVendorsScreen(),
    );
  }
}
// 