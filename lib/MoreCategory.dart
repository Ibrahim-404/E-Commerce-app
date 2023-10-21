import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:start_project/CustomWidget/EditFlashSaleWidget.dart';
// import 'package:start_project/CustomWidget/bottom_navigation.dart';
import 'package:start_project/CustomWidget/category.dart';
import 'package:start_project/CustomWidget/search_bar.dart';
// import 'package:start_project/HomeScreen.dart';
import 'package:start_project/ListManCategory.dart';
import 'package:start_project/ListWomanCategory.dart';
import 'package:start_project/main.dart';
// import 'package:start_project/YourCart.dart';

class MoreCategory extends StatefulWidget {
  const MoreCategory({super.key});

  @override
  State<MoreCategory> createState() => _MoreCategoryState();
}

class _MoreCategoryState extends State<MoreCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              SerachBarWidget(),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Man Fashion",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 12),
              // Catergory(categoryName:"man pants" ,imageUrl:"assets/images/Categpry/man/man pants.png" ,)
             FutureBuilder(future: HandlingDataForCategory(), builder: (context, snapshot) {
               if(snapshot.connectionState==ConnectionState.waiting){
                 return Center(child: CircularProgressIndicator(),);
               }
               if(snapshot.hasError){
                 return Center(child: Text("Error networking:${snapshot.error} "),);
               }
              return GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount:  snapshot.data!.data.ListOfCategoryData.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 63/70,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 6,
                    crossAxisCount: 4
                ),
                itemBuilder: (context, i) {
                  return Catergory(
                    imageUrl: snapshot.data!.data.ListOfCategoryData[i].image,
                    categoryName: snapshot.data!.data.ListOfCategoryData[i].name,
                  );
                },
              );
             },),
              SizedBox(height: 24),
              Container(
                margin: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Woman Fashion",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height:12 ),
             FutureBuilder(future: HandlingDataForCategory(), builder: (context, snapshot) {
               if(snapshot.connectionState==ConnectionState.waiting){
                 return Center(child: CircularProgressIndicator(),);
               }
               if(snapshot.hasError){
return Center(child: Text("Error networking:${snapshot.error} "),);
               }
             return GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: snapshot.data!.data.ListOfCategoryData.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 63/70,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 6,
                    crossAxisCount: 4
                ),
                itemBuilder: (context, i) {
                  return Catergory(
                    imageUrl:snapshot.data!.data.ListOfCategoryData[i].image,
                    categoryName: snapshot.data!.data.ListOfCategoryData[i].name,
                  );
                },
              );
             },
             ),
              SizedBox(height: 89),
            ],
          ),
        ),
      ),
    );
  }
}
