import 'package:flutter/material.dart';
import 'package:flutter_final_1/WelcomePage.dart';
import 'package:flutter_final_1/login_page.dart';
import 'package:flutter_final_1/signup_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );

  }
}
