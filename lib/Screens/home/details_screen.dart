// import 'package:animation_2/components/fav_btn.dart';
// import 'package:animation_2/components/price.dart';
// import 'package:animation_2/constants.dart';
// import 'package:animation_2/models/Product.dart';
// import 'package:flutter/material.dart';
//
// import 'components/cart_counter.dart';
//
// class DetailsScreen extends StatefulWidget {
//   const DetailsScreen(
//       {Key? key, required this.product, required this.onProductAdd})
//       : super(key: key);
//
//   final Product product;
//   final VoidCallback onProductAdd;
//
//   @override
//   _DetailsScreenState createState() => _DetailsScreenState();
// }
//
// class _DetailsScreenState extends State<DetailsScreen> {
//   String _cartTag = "";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: SafeArea(
//         child: SizedBox(
//           width: double.infinity,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
//             child: ElevatedButton(
//               onPressed: () {
//                 widget.onProductAdd();
//                 setState(() {
//                   _cartTag = '_cartTag';
//                 });
//                 Navigator.pop(context);
//               },
//               child: Text("Add to Cart"),
//             ),
//           ),
//         ),
//       ),
//       backgroundColor: Colors.white,
//       appBar: buildAppBar(),
//       body: Column(
//         children: [
//           AspectRatio(
//             aspectRatio: 1.37,
//             child: Stack(
//               clipBehavior: Clip.none,
//               alignment: Alignment.center,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   color: Color(0xFFF8F8F8),
//                   child: Hero(
//                     tag: widget.product.title! + _cartTag,
//                     child: Image.asset(widget.product.image!),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: -20,
//                   child: CartCounter(),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(height: defaultPadding * 1.5),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     widget.product.title!,
//                     style: Theme.of(context)
//                         .textTheme
//                         .headline6!
//                         .copyWith(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Price(amount: "20.00"),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(defaultPadding),
//             child: Text(
//               "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the cole crops or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",
//               style: TextStyle(
//                 color: Color(0xFFBDBDBD),
//                 height: 1.8,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   AppBar buildAppBar() {
//     return AppBar(
//       leading: BackButton(
//         color: Colors.black,
//       ),
//       backgroundColor: Color(0xFFF8F8F8),
//       elevation: 0,
//       centerTitle: true,
//       title: Text(
//         "Fruits",
//         style: TextStyle(color: Colors.black),
//       ),
//       actions: [
//         FavBtn(radius: 20),
//         SizedBox(width: defaultPadding),
//       ],
//     );
//   }
// }


 import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/cart/cart_model.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key key, this.product, this.onProductAdd}) : super(key: key);
  final Product product;
  final VoidCallback onProductAdd;
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    String _cartTag = "";

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
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.37,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  color: Color(0xFFF8F8F8),
                  child: Hero(
                    tag: widget.product.title + _cartTag,
                    child: Image.network(widget.product.imgUrl),
                  ),
                ),
                // Positioned(
                //   bottom: -20,
                //
                // )
              ],
            ),
          ),
          SizedBox(height: defaultPadding * 1.5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    widget.product.title,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold),
                  ),

                ),
                Expanded(
                  child: Text('Price:  '+
                    widget.product.price.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold),
                  ),

                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the cole crops or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",
              style: TextStyle(
                color: Color(0xFFBDBDBD),
                height: 1.8,
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: BackButton(
        color: Colors.white,
      ),
      backgroundColor: kPrimaryColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Fruits",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        FavBtn(radius: 20),
        SizedBox(width: defaultPadding),
      ],
    );
  }
}


class FavBtn extends StatelessWidget {
  const FavBtn({
    Key key,
    this.radius = 12,
  }) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor:kPrimaryColor,
      child: SvgPicture.asset("assets/icons/heart.svg"),
    );
  }
}

const defaultPadding = 20.0;
const cartBarHeight = 119.0;
const headerHeight = 0.0;

const bgColor = kPrimaryColor;
const primaryColor = Color(0xFF40A944);

const panelTransition = Duration(milliseconds: 500);
