import 'package:electrical_store/Models/Products.dart';
import 'package:flutter/material.dart';
import 'package:electrical_store/utilities/Constants.dart';
import 'package:google_fonts/google_fonts.dart';
class ProductCard extends StatelessWidget {
ProductCard({ this.itemIndex,  this.product , this.prss});

  final int? itemIndex;
  final Products? product;
  final VoidCallback? prss;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding/2),
      height: 190,
      child: InkWell(
        onTap:  prss,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    color: Colors.black12,
                    blurRadius: 25,
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: -10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160,
                width: 200,
                child: Image.asset(product?.image as String,fit: BoxFit.cover,),
              ),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: SizedBox(
                  height: 136,
                  width: size.width-200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(product?.title as String,
                          style: GoogleFonts.almarai(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(product?.subTitle as String,style: Theme.of(context).textTheme.bodySmall,),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 30,vertical: kDefaultPadding/5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: kSecondaryColor,
                          ),
                          child: Text('السعر: \$${product!.price.toString()}',style: GoogleFonts.almarai(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}