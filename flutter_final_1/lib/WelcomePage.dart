import 'package:flutter/material.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.25,
            decoration: const BoxDecoration(
                image:DecorationImage(
                    image: AssetImage(
                        "assets/signup.png"
                    ),
                    fit:BoxFit.cover
                )
            ),
          ),
          SizedBox(height: 70,),
          Container(
            width:w,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color:Colors.black54,
                  ),
                ),
                Text(
                  "amul@gmail.com",
                  style: TextStyle(
                    fontSize: 20,
                    color:Colors.grey,
                  ),
                ),
              ],

            ),
          ),
          SizedBox(height: 150,),
          Container(
            width: w*0.5,
            height: h*0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image:DecorationImage(
                    image: AssetImage(
                        "assets/login_btn.png"
                    ),
                    fit:BoxFit.cover
                )
            ),
            child: Center(
              child: Text("Sign out",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color:Colors.white,
                ),
              ),
            ),
          ),

        ],
      ),
    );;
  }
}
