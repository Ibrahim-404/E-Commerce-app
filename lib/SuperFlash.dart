import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start_project/CustomWidget/EditFlashSaleWidget.dart';
import 'package:start_project/ListOfImage.dart';
import 'package:start_project/main.dart';
import 'HomeScreen.dart';

class SuperFlashSale extends StatelessWidget {
  const SuperFlashSale({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios, color: Color(0xFF9098B1)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Super Flash Sale",
          style: TextStyle(
            color: Color(0xFF223263),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(0xFF9098B1),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Container(
                height: 206,
                width: 343,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/Promotion Image.png",
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Super Flash Sale ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "50% Off ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
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
                              "08",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 2,
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(height: 4),
                              CircleAvatar(
                                radius: 2,
                                backgroundColor: Colors.white,
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 42,
                            height: 41,
                            color: Colors.white,
                            child: Text(
                              "34",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 2,
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(height: 4),
                              CircleAvatar(
                                radius: 2,
                                backgroundColor: Colors.white,
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 42,
                            height: 41,
                            color: Colors.white,
                            child: Text(
                              "52",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FutureBuilder(future: HandlingDataForProduct(),builder: (context, snapshot) {

              return GridView.builder(
                shrinkWrap: true,
                itemCount: ListOfLinksImageForFlashSale.length,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: 165 / 230,
                ),
                itemBuilder: (context, i) {
                  return EditFlashSale(
                    ImageLink:snapshot.data!.data.ListOFCategoryApi[i].image ,
                    name:snapshot.data!.data.ListOFCategoryApi[i].name,
                    discount: snapshot.data!.data.ListOFCategoryApi[i].discount,
                    oldPrice: snapshot.data!.data.ListOFCategoryApi[i].oldPrice,
                    price: snapshot.data!.data.ListOFCategoryApi[i].price,
                    id: snapshot.data!.data.ListOFCategoryApi[i].id,
                  );
                },
              );
            },
            ),

          ],
        ),
      ),
    );
  }
}
