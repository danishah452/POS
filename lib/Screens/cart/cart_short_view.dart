import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/home/details_screen.dart';
import 'package:flutter_auth/Screens/home/home_conntroller.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:path/path.dart' as Path;
import 'package:path/path.dart';

import '../../constants.dart';
import 'cart_model.dart';

class CardShortView extends StatefulWidget {
  const CardShortView({
    Key key,
     this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  _CardShortViewState createState() => _CardShortViewState();
}

class _CardShortViewState extends State<CardShortView> {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Text(
          "Cart",
          style: Theme.of(context).textTheme.headline6,
        ),
         const SizedBox(width: defaultPadding),
        cartdata(),
        // const SizedBox(width: defaultPadding),
        Column(
          children: [
            Container(
              height: 70,
              width: 80,
              child: CircleAvatar(

                backgroundColor: Colors.white,
                child:Text(

                  ScopedModel.of<CartModel>(context,
                      rebuildOnChange: true)
                      .totalCartValue
                      .toString() +
                      "",
                  style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor,),
                ),

              ),
            ),
          ],
        ),


      ],
    );
  }

  Widget cartdata(){

    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ScopedModel.of<CartModel>(this.context,
            rebuildOnChange: true)
            .total,
        itemBuilder: (context, index) {
          return ScopedModelDescendant<CartModel>(
            builder: (context, child, model) {
              return
                Column(

                children:
                [
                  Image.network(
                    model.cart[index].imgUrl,
                    height: 25,
                    width: 60,
                  ),

                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      model.updateProduct(model.cart[index],
                          model.cart[index].qty - 1);
                      // model.removeProduct(model.cart[index]);
                    },
                  ),


                ],
              );
              },
          );
        },
      ),
    );



  }




}



