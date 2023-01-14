import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_1/WelcomePage.dart';
import 'package:flutter_final_1/login_page.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  final AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>auth.currentUser;
    //notification to user
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }
  _initialScreen(User? user){
    if(user==null){
      print("login page");
      Get.offAll(()=>LoginPage());
    }
    else{
      Get.offAll(()=>WelcomePage());
    }
  }
  Future<void> register(String email, password) async {
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About User", "User Message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        "Account creation failed",
        style: TextStyle(
          color: Colors.white
        )
      ),
        messageText: Text(
          e.toString()
        )
      );
    }
  }
}