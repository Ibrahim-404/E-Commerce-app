import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start_project/HomeScreen.dart';
import 'package:start_project/MainScreen.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      // labelText: "Email",
                      hintText: "Full Name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                    )),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: const InputDecoration(
                    // labelText: "Email",
                    hintText: "Your Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.mail_outline_outlined,
                    ),
                    // suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(height: 8),
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
                SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    // labelText: "Email",
                    hintText: "Password Again",
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
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    " have a account? ",
                    style: TextStyle(
                      color: Color(0xFF9098B1),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Color(0xFF40BFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return MainScreen();
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
