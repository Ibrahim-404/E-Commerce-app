import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start_project/LoginScreen.dart';
class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
          () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (_) => LoginScreen(),
          ),
              (route) => false,
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: MediaQuery.of(context).size.width,
      color: Color(0xFF40BFFF),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center ,
        children: [
Image(image: AssetImage("assets/images/single icon White.png"),
height: 72,
width: 72,),
      ]),
      ),
    );
  }
}
