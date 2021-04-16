import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convid/screens/home/home_screen.dart';
import 'search_bar.dart';
import 'category_card.dart';
import 'package:convid/constants.dart';
import "package:google_fonts/google_fonts.dart";

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .4,

            decoration: BoxDecoration(
              color: kTextColorLight,

              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.0),bottomRight: Radius.circular(60.0),)
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(
                    height:100,
                  ),
                  Text(
                    "Jewellry Section",
                    style: GoogleFonts.aBeeZee(color:kTextColorDark,fontSize:40.0,fontWeight: FontWeight.bold),

                  ),
                  SizedBox(
                    height:25,
                  ),

                  SearchField(),
                  SizedBox(
                    height:50,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "EARRINGS",
                          image: "assets/images/earrings.jpg",
                          press: () {

                          },
                        ),


                        CategoryCard(
                          title: "RINGS",
                          image: "assets/images/rings.jpg",
                          press: () {

                          },
                        ),

                      ],
                    ),
                  ),




                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



