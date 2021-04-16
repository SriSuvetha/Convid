import 'package:flutter/material.dart';
import 'package:convid/components/no_account_text.dart';
import 'package:convid/components/socal_card.dart';
import '../../../size_config.dart';
import 'sign_form.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:convid/constants.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: GoogleFonts.lato(color:kPrimaryColor,fontSize:40.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                ),

                Text(
                  "Sign in to your account and continue Shopping!!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenWidth(13),color:kSecondaryColor ),

                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),

                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
