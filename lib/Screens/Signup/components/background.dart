import 'package:flutter/material.dart';

import '../../../animation.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      // Here i can use size.width but use double.infinity because both work as a same
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            color: Colors.white,
            child: const SizedBox.expand(
              child:  VariousDiscs(10),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned( top: 10,
            left: 8,
            child:
            Column(

                children: [
                  ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink.shade50, // background
                        onPrimary: Colors.black, // foreground
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_rounded,

                      )),
                ] ),),

          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.25,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
