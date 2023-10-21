import 'package:flutter/material.dart';
import "package:carousel_slider/carousel_slider.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:start_project/CustomWidget/CustomDotIndecator.dart';
import 'package:start_project/main.dart';

class ProductDetail extends StatefulWidget {
  final int? ID;
  const ProductDetail({ this.ID});

  @override
  // ProductDetail(
  //     {required this.TilteName,required this.SliderImages,required this.DescraptionName,this.ID});
  State<ProductDetail> createState() => _ProductDetailState();
}
class _ProductDetailState extends State<ProductDetail> {


  String? TilteName;
  List<String>?SliderImages;
  String? DescraptionName;



  int currentIndex = 0;
  bool Foveritialized = false;
  double SizeStart = 0;

  bool ClickedOntoColorOptionForChoiceColorYouWant = false;

  List<Color> ColorsOption = [
    Color(0XFFFFC833),
    Color(0XFF40BFFF),
    Color(0XFFFB7181),
    Color(0XFF53D1B6),
    Color(0XFF5C61F4),
    Color(0XFF223263),
  ];

  List<double> LsitOfSize = [6.0, 6.5, 7.0, 7.5, 8, 8.5, 9.0, 9.5, 10.0];

  @override
  Widget build(BuildContext context) {
    double WidthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF9098B1),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "$TilteName",
          style: TextStyle(
              color: Color(0xFF223263),
              fontSize: 16,
              fontWeight: FontWeight.w700,
              overflow: TextOverflow.ellipsis),
          maxLines: 1,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Color(0xFF9098B1)),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Color(0xFF9098B1)),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 16),
        child:FutureBuilder(future:HandlingDataForProduct() ,builder: (context, snapshot) {

          return  SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 238.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  items: snapshot.data!.data.ListOFCategoryApi.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ProductSlider(image: i.image!);
                      },
                    );
                  }).toList(),
                ),
                CustomDotIndecator(
                  currentIndexInCarouselSlider: currentIndex,
                  lengthOfImageInApi: SliderImages!.length,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      height: 60,
                      width: 0.73 * WidthScreen,
                      child: Text(
                        "$TilteName",
                        maxLines: 2,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Color(0xFF223263),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            Foveritialized == true
                                ? Foveritialized = false
                                : Foveritialized = true;
                          });
                        },
                        icon: Icon(
                          Foveritialized == true
                              ? Icons.favorite_outlined
                              : Icons.favorite_border_outlined,
                          color:
                              Foveritialized == true ? Colors.red : Colors.grey,
                        ))
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 0.256 * WidthScreen,
                  height: 16,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 12,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Text(
                    "\$24",
                    style: TextStyle(
                      color: Color(0xFF40BFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "select size",
                  style: TextStyle(
                      color: Color(0xFF223263),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 350,
                      height: 48,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: LsitOfSize.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          // SizeStart+=0.5;

                          return Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1),
                            ),
                            child: Center(
                              child: Text(
                                "${LsitOfSize[index]}",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight
                                        .w500), //how to make this text in center shap
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 5,
                            height: 8,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "select color",
                  style: TextStyle(
                      color: Color(0xFF223263),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 48,
                  width: 0.981 * WidthScreen,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: ColorsOption.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          child: CircleAvatar(
                              backgroundColor: ColorsOption[index],
                              radius: 25,
                              child: CircleAvatar(
                                  backgroundColor:
                                      ClickedOntoColorOptionForChoiceColorYouWant ==
                                              true
                                          ? Colors.white
                                          : ColorsOption[index],
                                  radius: 8)),
                          onTap: () {
                            setState(() {
                              ClickedOntoColorOptionForChoiceColorYouWant == true
                                  ? ClickedOntoColorOptionForChoiceColorYouWant =
                                      false
                                  : ClickedOntoColorOptionForChoiceColorYouWant =
                                      true;
                            });
                          });
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 1,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Specification",
                  style: TextStyle(
                    color: Color(0xFF223263),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 241,
                  width: 0.9146 * WidthScreen,
                  child: Text(
                    "",
                    style: TextStyle(
                        color: Color(0xFF223263),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Row(children: [
                  Text(
                    "$DescraptionName",
                    style: TextStyle(
                        color: Color(0xFF223263),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )              ],
                )
              ],
            ),
          );
        },
        ),
      ),
    );
  }
}

class ProductSlider extends StatelessWidget {
  ProductSlider({required this.image});
  String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("$image"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
