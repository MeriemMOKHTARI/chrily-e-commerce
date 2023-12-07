import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:test/Controlleurs/auth_controlleur.dart';
import 'package:test/utils/show_snackBar.dart';
import 'package:test/views/Shared/appstyle.dart';
import 'package:test/views/buyers/auth/login_screen.dart';

import '../../main_screen.dart';

class buyerRegisterScreen extends StatefulWidget {
  @override
  State<buyerRegisterScreen> createState() => _buyerRegisterScreenState();
}

class _buyerRegisterScreenState extends State<buyerRegisterScreen> {
  var r = Color.fromRGBO(244, 67, 54, 1);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final AuthControlleur _authControlleur = AuthControlleur();

  late String email;

  late String fullName;

  late String phoneNumber;

  late String password;
  bool _isLoading = false;

  Uint8List? _image;

  pickProfileImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();
    XFile? _file = await _imagePicker.pickImage(source: source);

    if (_file != null) {
      return await _file.readAsBytes();
    } else {
      print('No image selected ');
    }
  }

  SelectGalleryImage() async {
    Uint8List im = await _authControlleur.pickProfileImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  SelectCameraImage() async {
    Uint8List im = await _authControlleur.pickProfileImage(ImageSource.camera);
    setState(() {
      _image = im;
    });
  }

  _signUpUser() async {
    setState(() {
      _isLoading = true;
    });
    if (_formKey.currentState!.validate()) {
      String res = await _authControlleur
          .signUpUSers(email, fullName, phoneNumber, password, _image)
          .whenComplete(() {
        setState(() {
          _formKey.currentState!.reset();
          _isLoading = false;
        });
      });
      return
          // ignore: use_build_context_synchronously
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) {
        return Mainscreen();
      }));
    } else {
      setState(() {
        _isLoading = false;
      });
      showSnackBar(context, 'Please Fields must not be Empty!');
    }
  }

  // _signUpUser() async {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Chrily',
                          // 'Create Customer"s Account',
                          style: appstyle1(
                              24,
                              const Color.fromRGBO(244, 67, 54, 1),
                              FontWeight.bold)),
    
                      //  TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'AutourOne'),
    
                      Container(
                        height: 80,
                        child: Lottie.network(
                            'https://lottie.host/4ac0215f-3ec8-45b4-b1b7-12a076f8f27f/XDm7YUbmM3.json'),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    _image != null
                        ? CircleAvatar(
                            radius: 64,
                            backgroundColor: Color.fromRGBO(244, 67, 54, 1),
                            backgroundImage: MemoryImage(_image!),
                          )
                        : CircleAvatar(
                            radius: 64,
                            backgroundColor: Color.fromRGBO(244, 67, 54, 1),
                            backgroundImage: NetworkImage(
                                'https://as2.ftcdn.net/v2/jpg/00/64/67/63/1000_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg'),
                          ),
                    Positioned(
                        right: 0,
                        top: 5,
                        child: IconButton(
                            onPressed: () {
                              SelectGalleryImage();
                            },
                            icon: Icon(CupertinoIcons.photo)))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Border color
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[200],
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Email must not be empty';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(
                        labelText: '   Enter Email',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Border color
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[200],
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please FullName must not be empty';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        fullName = value;
                      },
                      decoration: InputDecoration(
                        labelText: '   Enter Full Name',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Border color
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[200],
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return '   Please PhoneNumber must not be empty';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        phoneNumber = value;
                      },
                      decoration: InputDecoration(
                        labelText: '   Enter Phone Number',
                      ),
                    ),
                  ),
                ),
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Password must not be empty';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                        labelText: '   Enter Password',
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _signUpUser();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 67, 54, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: _isLoading
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 4),
                              )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already Have An Account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          }));
                        },
                        child: Text('login',style: TextStyle(color: r),)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
