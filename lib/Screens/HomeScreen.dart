import 'package:electrical_store/utilities/Constants.dart';
import 'package:electrical_store/Widgets/details/HomeBody.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: Homebody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text('متجر الالكترونيات',
          style: GoogleFonts.almarai(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.menu,color: Colors.white,),
          onPressed: (){},

        )
      ],
    );
  }
}



