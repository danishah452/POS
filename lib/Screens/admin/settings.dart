import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'drawer.dart';

void run() => runApp(Settings());

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            title: Text('Settings'),
            backgroundColor: Colors.black87,
          ),
          drawer: buildDrawer(context),
          // body: Center(child: TransferData())),
        ));
  }
}

