import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:start_project/main.dart';

class EditFlashSale extends StatelessWidget {
  EditFlashSale({required this.ImageLink, required this.name,required this.discount,required this.oldPrice,required this.price,this.id});
  String ImageLink;
  String name;
  int? id;
  double price;
  double oldPrice;
  int discount;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 282,
      margin: EdgeInsets.only(left: 16,right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFEBF0FF), width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 133,
            height: 133,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage("$ImageLink"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(height: 8),
          Text(
            "$name",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xFF223263),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4),
      Container(
        height:12 ,
        width: 20,
        child: RatingBar.builder(
          initialRating: 4,
          minRating: 1,
          direction: Axis.vertical,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 10, // Adjust this size as needed
          // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ),

          SizedBox(height: 16),
          Text(
            "\$$price",
            style: TextStyle(
              color: Color(0xFF40BFFF),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4),
          Container(
            width: 92,

            child: Row(

              children: [
                Text(
                  "\$$oldPrice",
                  style: TextStyle(
                    color: Color(0xFF9098B1),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "$discount%o ff",
                  style: TextStyle(
                    color: Color(0xFFFB7181),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
