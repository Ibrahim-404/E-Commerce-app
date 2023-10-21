import 'package:flutter/material.dart';
import 'package:start_project/HomeScreen.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59,
      width: 375,
      child: BottomNavigationBar(
        selectedItemColor: Color(0xFF40BFFF),
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
        unselectedItemColor: Color(0xFF9098B1),
        unselectedLabelStyle: TextStyle(
          color: Color(0xFF9098B1),
          fontSize: 10,
          fontWeight: FontWeight.w400, // Adjust the font weight as needed
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(child: Icon(Icons.home),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HomeScreen();
              }
              ));
            }),
            label: "Home",

          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined), label: "Offer"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: "Account"),
        ],
      ),
    );
  }
}
