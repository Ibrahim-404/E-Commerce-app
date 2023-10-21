import 'package:flutter/material.dart';

class FlashSale extends StatelessWidget {
  FlashSale(
      {required this.ImageLink,
        required this.TextDescription,
        required this.price,
        required this.oldPrice,
        required this.discount});
  String ImageLink;
  String TextDescription;
  double price;
  double oldPrice;
  int discount;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 141,
      height: 245,
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFEBF0FF), width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 109,
            height: 109,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage("$ImageLink"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(height: 8),
          Text(
            "$TextDescription",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xFF223263),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "\$$price",
            style: TextStyle(
              color: Color(0xFF40BFFF),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Row(
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
                "$discount%off",
                style: TextStyle(
                  color: Color(0xFFFB7181),
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}