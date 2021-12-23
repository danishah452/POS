import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_auth/Screens/cart/cart_model.dart';
import 'package:http/http.dart' as http;
import '../../constants.dart';
import 'drawer.dart';

void run() => runApp(Items());

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  List<Product> _products = [
    Product(
        id: 1,
        title: "Apple",
        price: 20.0,
        imgUrl: "https://img.icons8.com/plasticine/2x/apple.png",
        qty: 1),
    Product(
        id: 2,
        title: "Banana",
        price: 40.0,
        imgUrl: "https://img.icons8.com/cotton/2x/banana.png",
        qty: 1),
    Product(
        id: 3,
        title: "Orange",
        price: 20.0,
        imgUrl: "https://img.icons8.com/cotton/2x/orange.png",
        qty: 1),
    Product(
        id: 4,
        title: "Melon",
        price: 40.0,
        imgUrl: "https://img.icons8.com/cotton/2x/watermelon.png",
        qty: 1),
    Product(
        id: 5,
        title: "Avocado",
        price: 25.0,
        imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
        qty: 1),
    Product(
        id: 6,
        title: "Mango",
        price: 28.0,
        imgUrl: "https://cdn-icons-png.flaticon.com/512/1054/1054117.png",
        qty: 1),
    Product(
        id: 7,
        title: "Avocado",
        price: 25.0,
        imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
        qty: 1),
    Product(
        id: 8,
        title: "Mango",
        price: 28.0,
        imgUrl: "https://cdn-icons-png.flaticon.com/512/1054/1054117.png",
        qty: 1),
    Product(
        id: 9,
        title: "Mango",
        price: 28.0,
        imgUrl: "https://cdn-icons-png.flaticon.com/512/1054/1054117.png",
        qty: 1),
    Product(
        id: 10,
        title: "Avocado",
        price: 25.0,
        imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
        qty: 1),
    Product(
        id: 11  ,
        title: "Mango",
        price: 28.0,
        imgUrl: "https://cdn-icons-png.flaticon.com/512/1054/1054117.png",
        qty: 1),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            title: Text('Items'),
             backgroundColor:kPrimaryColor,
          ),
          drawer: buildDrawer(context),
          body:Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // color: kPrimaryColor,

            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 6, crossAxisSpacing: 8, childAspectRatio: 1.0),

              itemCount: _products.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  // height: 280.0,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:
                          EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            
                            height: 70.5,
                            width: 70.75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "${_products[index].imgUrl}"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Text(_products[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("\$"+_products[index].price.toString()),

                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),);
  }
}

// Image.network(_products[index].imgUrl, height: 120, width: 120,),
