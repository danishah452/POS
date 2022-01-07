import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/Screens/home/practicehome.dart';
import 'package:flutter_auth/example.dart';
import 'package:flutter_auth/splash.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';

import 'Screens/cart/cart_model.dart';
import 'Screens/home/homeScreen.dart';
import 'Screens/home/location_provider.dart';
import 'Screens/home/mapping.dart';

void main() => runApp(MyApp( model: CartModel(),));

class MyApp extends StatelessWidget {

  final CartModel model;

  const MyApp({Key key, @required this.model}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return ScopedModel<CartModel>(
        model: model,
    child:  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Splash(),
    ) );
  }
}

