import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/src/types/image_source.dart';

class AuthControlleur {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final FirebaseStorage _storage =FirebaseStorage.instance;
  Future<String> signUpUSers(String email, String fullName, String phoneNumber,
      String password,Uint8List? image) async {
    String res = 'Some error occured';

    try {
      if (email.isNotEmpty &&
          fullName.isNotEmpty &&
          phoneNumber.isNotEmpty &&
          password.isNotEmpty &&
          image!=null) {
        //create the user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
String profileImageUrl=await  _uploadProfileImageToStorage(image);
        await _firestore.collection('buyers').doc(cred.user!.uid).set({
'email' :email,
'fullName':fullName,
'phoneNumber':phoneNumber,
'buyerId':cred.user!.uid,
'adress':'',
'profileImage':profileImageUrl,
        });
        res='success';
      } else {
        res = 'Please fields must not be empty!';
      }
    } catch (e) {}
    return res;
  }


  loginUsers(String email,String password)async{
String res = 'Smth went wrong';
try { if (email.isNotEmpty &&
          password.isNotEmpty) {
        //login the user

await _auth.signInWithEmailAndPassword(email: email, password: password);
       res='success';
  
}
else{
  res = 'Please fields must not be empty!';
}
 }catch (e) {
  res=e.toString();
}

return res;
  }

 
  pickProfileImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();

    XFile? _file = await _imagePicker.pickImage(source: source);

    if (_file != null) {
      return await _file.readAsBytes();
    } else {
      print('No Image Selected');
    }
  }

  _uploadProfileImageToStorage(Uint8List? image) async {
Reference ref =  _storage.ref().child('profilePics').child(_auth.currentUser!.uid);
  UploadTask uploadTask= ref.putData(image!);
  TaskSnapshot snapshot=   await uploadTask;
  String downloadURL  = await   snapshot.ref.getDownloadURL();
  return downloadURL;
  }
}