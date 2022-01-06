import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart/cart_model.dart';
import 'details_screen.dart';
import '../../constants.dart';

class PracticeHome extends StatefulWidget {
  const PracticeHome({Key key, this.product, this.onProductAdd}) : super(key: key);
  final Product product;
  final VoidCallback onProductAdd;

  @override
  _PracticeHomeState createState() => _PracticeHomeState();
}

class _PracticeHomeState extends State<PracticeHome> {
  @override
  Widget build(BuildContext context) {
    String _cartTag = "";
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,),
              onPressed: () {
                widget.onProductAdd();
                setState(() {
                  _cartTag = '_cartTag';
                });
                Navigator.pop(context);
              },
              child: Text("Add to Cart", style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white10,
      body: Stack(
        children: [
          Positioned(
            top: -size.height * 0.15,
            right: -size.height * 0.20,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              height: size.height * 0.5,
              width: size.height * 0.5,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: kToolbarHeight,
            left: 16,
            right: 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.black, // foreground
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_rounded,

                    )),
                IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                )
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.25,
            right: 10,
            left: 10,
            child: FittedBox(
              child: Text(
                widget.product.title + _cartTag,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.26,
            right: size.height * 0.07,
            left: size.height * 0.07,
            child: Image.network(widget.product.imgUrl),
          ),
          Positioned(
            top: size.height * 0.65,
            left: 16,
            right: 16,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: size.width*0.92,
                          height: size.height*0.1,
                          child: Text(
                            "In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
                            style: TextStyle(

                                fontSize: 11,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),


                  ],
                ),
                Text('Price  \$:'+
                    widget.product.price.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white),
                ),

              ],
            ),
          ),
          // Positioned(
          //   top: size.height*0.84,
          //   left:size.height* 0.20 ,
          //   right:16,
          //   child: Row(
          //     children: [
          //       RaisedButton(
          //
          //         color:kPrimaryColor,
          //        child: Text("BUY", style: TextStyle(
          //            fontWeight: FontWeight.bold,
          //            fontSize: 20,
          //            color: Colors.white)),
          //         onPressed: (){},
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
