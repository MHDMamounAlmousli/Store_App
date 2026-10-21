import 'package:electrical_store/Widgets/details/productimage/productimage.dart';
import 'package:electrical_store/utilities/Constants.dart';
import 'package:flutter/material.dart';

import '../../Models/Products.dart';
import 'color.dart';
class Detailsbody extends StatelessWidget {
  Detailsbody({
    super.key,
     required this.products
  });
 final Products products;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Container(
         width: double.infinity,
         padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*1.5),
         decoration: BoxDecoration(
             color: kBackgroundColor,
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(50),
             bottomRight: Radius.circular(50),
           )
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Center(child: productImage(size: size,image: products.image as String,)),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 15),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   changeColor(color: kTextLightColor,isSelected: true,),
                   changeColor(color: Colors.blue,isSelected: false,),
                   changeColor(color: Colors.red,isSelected: false,),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
               child: Text(products.title as String,style: TextStyle(fontWeight: FontWeight.bold),),
               
             ),
             Text('السعر: \$${products.price}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: kSecondaryColor),),
             SizedBox(
               height: kDefaultPadding,
             ),
           ],
         ),
       ),
       Container(
         child: Text(products.description as String,style: TextStyle(color: Colors.white,fontSize:19 ),),
         margin: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
         padding: EdgeInsets.symmetric(vertical: kDefaultPadding*0.8),
       )
     ],
    );
  }
}



