import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/Welcome/welcome_screen.dart';
import 'animation.dart';
import 'constants.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: const SizedBox.expand(
                  child: VariousDiscs(10),

                ),
              ),

              Image.asset('assets/icons/vp.png'),
              Positioned(
                top: 450,
                // bottom: 50,
                left: 0,
                right: 0,
                child:
                Column(

                    children: [
                     Text("POS SYSTEM",
                       style: GoogleFonts.lato(
                         textStyle: Theme.of(context).textTheme.headline6,
                         fontWeight: FontWeight.bold,color: kPrimaryColor,// background
                            // foreground


                          ),
                     ), ], ),),


            ],
          ),

        ),

      ],
    );
  }
}
