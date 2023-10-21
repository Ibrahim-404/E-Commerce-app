import 'package:flutter/material.dart';

class CustomDotIndecator extends StatelessWidget {
  CustomDotIndecator({required this.lengthOfImageInApi,required this.currentIndexInCarouselSlider});
int lengthOfImageInApi;
int currentIndexInCarouselSlider;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:List.generate(lengthOfImageInApi, (index) {
        return Container(
          height: 8.0,
          width: 8.0,
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:index== currentIndexInCarouselSlider?Colors.blue : Colors.grey,
          ),
        );
      })

    ,);
  }
}
