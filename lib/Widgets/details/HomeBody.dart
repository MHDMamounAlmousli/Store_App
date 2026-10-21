import 'package:electrical_store/utilities/Constants.dart';
import 'package:electrical_store/Screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:electrical_store/Widgets/ProductCard.dart';
import 'package:electrical_store/Models/Products.dart';
class Homebody extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 75),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                    itemBuilder:(context,index) => ProductCard(itemIndex: index,
                      product: products[index] ,
                        prss: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => detailsScreen(products: products[index],)));}
                       )
                  ),
              ],
            ),
        ),
      ],
      ),
    );
  }
}
