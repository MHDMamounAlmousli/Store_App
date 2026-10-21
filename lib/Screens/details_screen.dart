import 'package:electrical_store/Models/Products.dart';
import 'package:electrical_store/Widgets/details/DetailsBody.dart';
import 'package:electrical_store/utilities/Constants.dart';
import 'package:flutter/material.dart';
class detailsScreen extends StatelessWidget {
  const detailsScreen({
    super.key,
    required this.products
  });
final Products products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body:Detailsbody(products: products,),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        icon: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15),
          child: Icon(Icons.arrow_back_ios_new,
          color: kPrimaryColor,),
        ),
        onPressed: (){Navigator.pop(context);},
      ),
      title: Text('الرجوع',style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold),),
    );
  }
}
