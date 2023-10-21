import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start_project/RegisterPage.dart';
import 'package:start_project/splashScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 68),
                Image.asset(
                  'assets/images/Vector.png',
                  height: 72,
                  width: 72,
                ),
                const SizedBox(height: 16),
                const Text("Welcome to Lafyuu",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff223263),
                    )),
                const SizedBox(height: 8),
                const Text("Sign in to continue",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff223263),
                    )),
                const SizedBox(height: 28),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      // labelText: "Email",
                      hintText: "Your Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                      ),
                    )),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    // labelText: "Email",
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color(
                      0xFF40BFFF,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          // fontStyle: FontStyle.values,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )),
                SizedBox(height: 21),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider()),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 28),
                        child: Text(
                          "or",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFEBF0FF)),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: TextButton.icon(
                    icon: Icon(Icons.facebook),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      fixedSize: Size(screenWidth, 50),
                    ),
                    label: Text(
                      "Login with facebook",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFEBF0FF)),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: TextButton.icon(
                    icon: Icon(Icons.facebook),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      fixedSize: Size(screenWidth, 50),
                    ),
                    label: Text(
                      "Login with Google",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF40BFFF),
                  ),
                ),
                SizedBox(height: 8),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Don’t have a account? ",
                    style: TextStyle(
                      color: Color(0xFF9098B1),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Color(0xFF40BFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return RegisterPage();
                        },
                      ));
                    },
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class testApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
