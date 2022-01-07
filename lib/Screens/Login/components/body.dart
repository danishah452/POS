import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/home/homeScreen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
   Body({
    Key key,
  }) : super(key: key);
   final formKey = GlobalKey<FormState>(); //key for form
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Background(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "USER LOGIN",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                // Image.asset(
                //   "assets/images/salesicon.png",
                //   height: size.height * 0.3,
                // ),
                SizedBox(height: size.height * 0.03),
                RoundedInputField(

                  hintText: "Your Email",
                  onChanged: (value) {},

                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                SizedBox(height: size.height * 0.03),
                RoundedButton(
                  text: "LOGIN",
                  press: () {
                    if(formKey.currentState.validate()){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Home();
                          },
                        ),
                      );
                    }

                  },
                ),
                // SizedBox(height: size.height * 0.03),
                // AlreadyHaveAnAccountCheck(
                //   press: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) {
                //           return SignUpScreen();
                //         },
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
