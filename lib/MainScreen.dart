import 'package:flutter/material.dart';
import 'package:start_project/HomeScreen.dart';
import 'package:start_project/MoreCategory.dart';
import 'package:start_project/Screen/ProductDetail.dart';
import 'package:start_project/YourCart.dart';
class MainScreen extends StatefulWidget {
   MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int BottomNavigationIndex = 0;

  List<Widget>goToScreen=[HomeScreen(),MoreCategory(),CartScreen(),ProductDetail()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF40BFFF),
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
        unselectedItemColor: Color(0xFF9098B1),
        unselectedLabelStyle: TextStyle(
          color: Color(0xFF9098B1),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined), label: "Offer"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: "Account"),
        ],
        currentIndex: BottomNavigationIndex,
        onTap: (value) {
          setState(() {
            BottomNavigationIndex =
                value; // Assign the selected index to BottomNavigationIndex
          });

        },
      ),
      body: goToScreen[BottomNavigationIndex],
    );
  }
}
