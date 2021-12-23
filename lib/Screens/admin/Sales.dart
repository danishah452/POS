import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';
import 'drawer.dart';




class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: kPrimaryColor,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(left: 130),

          ),
        ),
        drawer: buildDrawer(context),
      ),
    );
  }
}