import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start_project/CustomWidget/FilshSale.dart';
import 'package:start_project/ListOfImage.dart';
import 'package:start_project/main.dart';
class MeageSale extends StatelessWidget {
  const MeageSale({super.key});
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
      body: Container(
        width: MediaQuery.of(context).size.width,
      child:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
FutureBuilder(
  future:HandlingDataForProduct() ,builder: (context, snapshot) {

   return GridView.builder(shrinkWrap: true,
    scrollDirection: Axis.vertical,
    physics: NeverScrollableScrollPhysics(),
    itemCount: ListOfLinksImageForFlashSale.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 165 / 230,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 2),
    itemBuilder: (context, i) {
      return FlashSale(
          ImageLink: snapshot.data!.data.ListOFCategoryApi[i].image,
          TextDescription: snapshot.data!.data.ListOFCategoryApi[i].name,
          price: snapshot.data!.data.ListOFCategoryApi[i].price,
          oldPrice: snapshot.data!.data.ListOFCategoryApi[i].oldPrice,
          discount: snapshot.data!.data.ListOFCategoryApi[i].discount
      );
    }

  );
  },
),
          ],
        ),
      ),
      ),
    );
  }
}
Widget DeleteIcon(bool x){
  x=true;
  if (x == true) {
    SizedBox(width: 8);
  return Icon(Icons.delete_outlined,color: Color(0xFF9098b1),);

  }
  else{
    return SizedBox(width: 1);
  }
  }
// class FlashSale extends StatelessWidget {
//   FlashSale({required this.ImageLink, required this.TextDescription,this.x=true, required double price, required double oldPrice, required int discount});
//   String ImageLink;
//   String TextDescription;
//   bool x ;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 141,
//       height: 238,
//       margin: EdgeInsets.only(left: 16),
//       decoration: BoxDecoration(
//         border: Border.all(color: Color(0xFFEBF0FF), width: 1),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       padding: EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: 109,
//             height: 109,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 image: DecorationImage(
//                   image: AssetImage("$ImageLink"),
//                   fit: BoxFit.cover,
//                 )),
//           ),
//           SizedBox(height: 8),
//           Text(
//             "$TextDescription",
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: TextStyle(
//               color: Color(0xFF223263),
//               fontSize: 12,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(
//             "\$299,43",
//             style: TextStyle(
//               color: Color(0xFF40BFFF),
//               fontSize: 12,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           SizedBox(height: 8),
//           Row(
//             children: [
//               Text(
//                 "\$299,43",
//                 style: TextStyle(
//                   color: Color(0xFF9098B1),
//                   fontSize: 10,
//                   fontWeight: FontWeight.w700,
//                   decoration: TextDecoration.lineThrough,
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Text(
//                 "24%o ff",
//                 style: TextStyle(
//                   color: Color(0xFFFB7181),
//                   fontSize: 10,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//               DeleteIcon(x),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }