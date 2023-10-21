import 'package:flutter/material.dart';

class SerachBarWidget extends StatelessWidget {
  const SerachBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Padding(padding: EdgeInsets.only(left: 10)),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff9098B1),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff9098B1),
                ),
              ),
              hintText: 'Search',
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xff9098B1),
              ),
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.favorite_border_outlined,
            color: Color(0xff9098B1),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.notifications_none_outlined,
            color: Color(0xff9098B1),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
