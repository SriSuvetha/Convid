import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convid/screens/home/home_screen.dart';
import 'category_card.dart';
import 'search_bar.dart';
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

              image: DecorationImage(

                alignment: AlignmentDirectional.centerEnd,
                image: AssetImage("assets/images/shop.png"),
              ),
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
                    "Select the shop",
                    style: GoogleFonts.lato(color:kTextColorDark,fontSize:50.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,letterSpacing: 0.5),

                  ),
                  SizedBox(
                    height:25,
                  ),

                  SearchField(),
                  SizedBox(
                    height:25,
                  ),



                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "TRENDS",
                          image: "assets/images/trends.png",
                          press: () {
                            Navigator.pushNamed(context, HomeScreen.routeName);

                          },
                        ),

                        CategoryCard(
                          title: "CHENNAI SILKS",
                          image: "assets/images/chennai.png",
                          press: () {
                            Navigator.pushNamed(context, HomeScreen.routeName);
                          },
                        ),
                        CategoryCard(
                          title: "POTHYS",
                          image: "assets/images/pothys.png",
                          press: () {
                            Navigator.pushNamed(context, HomeScreen.routeName);

                          },
                        ),
                        CategoryCard(
                          title: "CHANDRAS",
                          image: "assets/images/chandras.jpg",
                          press: () {
                            Navigator.pushNamed(context, HomeScreen.routeName);

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



