import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Promo extends StatefulWidget {
  @override
  Promo({required this.UrlLink});
  String UrlLink;

  // var x = DateTime.now();

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  var x = DateTime.now();

  Widget build(BuildContext context) {
    return Container(
        height: 206,
        width: 343,
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "${widget.UrlLink}",
                ))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                // alignment: Alignment.centerLeft,
                // margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Super Flash Sale ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "50% Off ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 200,
              height: 41,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 15),
                    width: 42,
                    height: 41,
                    color: Colors.white,
                    child: Text(
                      "${x.hour}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 2,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      CircleAvatar(
                        radius: 2,
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 42,
                    height: 41,
                    color: Colors.white,
                    child: Text(
                      "${x.minute}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 2,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      CircleAvatar(
                        radius: 2,
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 42,
                    height: 41,
                    color: Colors.white,
                    child: Text(
                      "${x.second}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
