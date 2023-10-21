import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:carousel_slider/carousel_slider.dart";
import 'package:start_project/CustomWidget/FilshSale.dart';
import 'package:start_project/CustomWidget/PromoWidget.dart';
import 'package:start_project/CustomWidget/category.dart';
import 'package:start_project/ListOfImage.dart';
import 'package:start_project/CustomWidget/EditFlashSaleWidget.dart';
import 'package:start_project/MegaSale.dart';
import 'package:start_project/MoreCategory.dart';
import 'package:start_project/CustomWidget/search_bar.dart';
import 'package:start_project/Screen/ProductDetail.dart';
import 'package:start_project/main.dart';
import 'SuperFlash.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key});
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 12),
                const SerachBarWidget(),
                SizedBox(
                  height: 12,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 207.0,
                    autoPlayInterval: Duration(milliseconds: 1500),
                  ),
                  items: ListOfLinksImageFromAssets.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Promo(UrlLink: i);
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          height: 21,
                          width: 72,
                          child: Text(
                            "Category",
                            style: TextStyle(
                                color: Color(0xFF223263),
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          width: 190.5,
                        ),
                        GestureDetector(
                          child: Container(
                            height: 21,
                            width: 114,
                            child: Text(
                              "More Category",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF40BFFF),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MoreCategory();
                            }));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                FutureBuilder(
                  future: HandlingDataForCategory(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(
                          child: Text(
                              "Error in Category snapshotData${snapshot.error}"));
                    }

                    return Container(
                      width: 455,
                      height: 108,
                      margin: EdgeInsets.all(16),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.data.ListOfCategoryData.length,
                        itemBuilder: (context, i) {
                          return Catergory(
                              imageUrl:
                                  snapshot.data!.data.ListOfCategoryData[i].image,
                              categoryName:
                                  snapshot.data!.data.ListOfCategoryData[i].name);
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      height: 21,
                      width: 72,
                      child: Text(
                        "Flash Sale",
                        style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 21,
                        width: 60,
                        child: Text(
                          "See more",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF40BFFF),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SuperFlashSale();
                        }));
                        //ToDo:write code for this button ,button function is show all categories in applaction
                      },
                    ),
                  ],
                ),
                SizedBox(height: 12),
                FutureBuilder(

                  future: HandlingDataForProduct(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(
                          child: Text(
                              "Error in Category snapshotData${snapshot.error}"));
                    }
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 238,
                      child: ListView.separated(
                        itemCount: snapshot.data!.data.ListOFCategoryApi.length,
                        shrinkWrap: true,

                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return FlashSale(
                            ImageLink: snapshot.data!.data.ListOFCategoryApi[i].image,
                            TextDescription: snapshot.data!.data.ListOFCategoryApi[i].name,
                            price: snapshot.data!.data.ListOFCategoryApi[i].price,
                            oldPrice: snapshot.data!.data.ListOFCategoryApi[i].oldPrice,
                            discount: snapshot.data!.data.ListOFCategoryApi[i].discount,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 16,
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      height: 21,
                      width: 72,
                      child: Text(
                        "Mega Sale",
                        style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 21,
                        width: 60,
                        child: Text(
                          "See more",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF40BFFF),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MeageSale();
                        }));
                        //ToDo:write code for this button ,button function is show all categories in applaction
                      },
                    ),
                  ],
                ),
                SizedBox(height: 12),
                FutureBuilder(
                  future: HandlingDataForProduct(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(
                          child: Text(
                              "Error in Mega sale product:${snapshot.error}"));
                    }
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 238,
                      child: ListView.separated(
                        itemCount: snapshot.data!.data.ListOFCategoryApi.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return FlashSale(
                            ImageLink: snapshot.data!.data.ListOFCategoryApi[i].image,
                            TextDescription: snapshot.data!.data.ListOFCategoryApi[i].name,
                            price: snapshot.data!.data.ListOFCategoryApi[i].price,
                            oldPrice: snapshot.data!.data.ListOFCategoryApi[i].oldPrice,
                            discount: snapshot.data!.data.ListOFCategoryApi[i].discount,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 16,
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 9,
                ),
                Container(
                  height: 206,
                  width: 343,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/Recomended Product Banner.png"),
                      )),
                ),
                SizedBox(height: 16),
                FutureBuilder(future:HandlingDataForProduct(),builder:(context, snapshot) {
                  return GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: snapshot.data!.data.ListOFCategoryApi.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 162 / 232,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 2),
                    itemBuilder: (context, i) {
                      return GestureDetector(
                        child: EditFlashSale(
                            ImageLink:snapshot.data!.data.ListOFCategoryApi[i].image ,
                            name:snapshot.data!.data.ListOFCategoryApi[i].name,
                        discount: snapshot.data!.data.ListOFCategoryApi[i].discount,
                          oldPrice: snapshot.data!.data.ListOFCategoryApi[i].oldPrice,
                          price: snapshot.data!.data.ListOFCategoryApi[i].price,
                          id: snapshot.data!.data.ListOFCategoryApi[i].id,
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return ProductDetail(ID: snapshot.data!.data.ListOFCategoryApi[i].id);
                              }));
                        },
                      );
                    },
                  );
                },
                ),
                SizedBox(
                  height: 30,
                ),
                // BottomNavigation(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}