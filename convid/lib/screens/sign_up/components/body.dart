import 'package:flutter/material.dart';
import 'package:convid/components/socal_card.dart';
import 'package:convid/constants.dart';
import 'package:convid/size_config.dart';
import "package:google_fonts/google_fonts.dart";
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Register Account", style: GoogleFonts.lato(color:kPrimaryColor,fontSize:40.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                Text(
                  "Complete your details and Start Shopping",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenWidth(13),color:kSecondaryColor ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),

                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,

                  style: TextStyle(fontSize: getProportionateScreenWidth(12),color:kSecondaryColor ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
