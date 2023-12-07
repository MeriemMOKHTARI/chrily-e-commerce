import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test/views/Shared/appstyle.dart';
import 'package:test/views/buyers/auth/Register_screen.dart';
import 'package:test/views/main_screen.dart';

import '../../../Controlleurs/auth_controlleur.dart';
import '../../../utils/show_snackBar.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var r = Color.fromRGBO(244, 67, 54, 1);
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthControlleur _authControlleur = AuthControlleur();
  bool _isLoading=false;


_loginUser() async {
  setState(() {
      _isLoading=true;
    });
    if (_formKey.currentState!.validate()) {
      String res = await _authControlleur.loginUsers(email, password) .whenComplete(() {
        setState(() {
          _formKey.currentState!.reset();
          _isLoading=false;
        });});
     if (res=='success'){return 
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
        return Mainscreen();
      }));}
      else{
        setState(() {
        _isLoading=false;
      });
         showSnackBar(context, res);
      }
      }
    else {
      showSnackBar(context, 'Please Fields must not be Empty!');
    }
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:  Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                          'Chrily',
                          style:
                          appstyle1(35, const Color.fromRGBO(244, 67, 54, 1), FontWeight.bold)),
                          //  TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'AutourOne'),
                        
                         Container(
                          height: 150,
                           child:Lottie.network(
                  'https://lottie.host/4ac0215f-3ec8-45b4-b1b7-12a076f8f27f/XDm7YUbmM3.json'
                          ),),
                // Text(
                //   'Login Customer"s Account',
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                // ),
                Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey), // Border color
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey[200],
                  ),
                  child:
                 TextFormField(
                    onChanged: (value) {
                      email = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Email must not be empty';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      
                      labelText: '   Enter Email Adress',
                    ),
                  ),
                ),),
                Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey), // Border color
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Password must not be empty';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: '   Enter Password',
                    ),
                  ),
                ),),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    _loginUser();
                  },
                  
                  child: Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 67, 54, 1)
                        , borderRadius: BorderRadius.circular(10)),
                    child:  Center(
                        child:
                         _isLoading? CircularProgressIndicator(
                            color: Colors.white,
                          ): 
                          Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5),
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Need An Account ?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return buyerRegisterScreen();
                          }));
                        },
                        child: const Text('Register',style: TextStyle(color: Color.fromRGBO(244, 67, 54, 1)),)),
                  ],
                ),
              ],
            ),
          ),
        
      ),
    );
  }
}
