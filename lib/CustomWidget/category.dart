import 'package:flutter/material.dart';
class Catergory extends StatelessWidget {
  Catergory({required this.imageUrl, required this.categoryName});
  String? categoryName;
  String imageUrl ;
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFEBF0FF),
            radius: 31,
            child: CircleAvatar(
              backgroundColor: Color(0xFFFFFFFF),
              radius: 30,
              child: Image(image:NetworkImage("$imageUrl"),
                height: 24,
                width: 24,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            alignment: Alignment.center,
            width: 70,
            height: 30,
            child: Text(
              "$categoryName",
              maxLines: 2,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
