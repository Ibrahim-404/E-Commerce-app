import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start_project/HomeScreen.dart';
import 'package:start_project/MoreCategory.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int BottomNavigationIndex = 0;
  int Counter = 1;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Card",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF223263),
          ),
          // overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: screenWidth,
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFFEBF0FF)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                width: 343,
                height: 104,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/images/image Product5.png"),
                      )),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Container(
                                width: 158,
                                height: 36,
                                child: Text("Nike Air Zoom Pegasus 36 Miami",
                                    style: TextStyle(
                                        color: Color(0xFF223263),
                                        fontSize: 14.2,
                                        fontWeight: FontWeight.w700),
                                    maxLines: 2,
                                    overflow: TextOverflow.fade)),
                            SizedBox(
                              width: 13,
                            ),
                            Icon(Icons.favorite, color: Colors.red),
                            SizedBox(width: 8),
                            Icon(Icons.delete_outlined),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Text(
                              "\$299,43",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF40BFFF)),
                            ),
                            SizedBox(width: 68),
                            Container(
                              width: 108,
                              height: 24,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Color(0xFF9098B1)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 32,
                                    color: Colors.white,
                                    child: GestureDetector(
                                      child: Icon(
                                        Icons.remove,
                                        color: Color(0xFF9098B1),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          Counter--;
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                      width: 40,
                                      alignment: Alignment.center,
                                      color: Color(0xFF9098B1),
                                      child: Text(
                                        "${Counter}",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF223263),
                                        ),
                                      )),
                                  Container(
                                    width: 32,
                                    color: Colors.white,
                                    child: GestureDetector(
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xFF9098B1),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          Counter++;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
