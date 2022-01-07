import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import '../../constants.dart';
import 'drawer.dart';

void run() => runApp(Additems());

class Additems extends StatefulWidget {
  @override
  _AdditemsState createState() => _AdditemsState();
}

class _AdditemsState extends State<Additems> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // backgroundColor: Colors.indigo[400],
            appBar: AppBar(
              title: Text('Items'),
              backgroundColor: kPrimaryColor,
            ),
            drawer: buildDrawer(context),
            body:  SafeArea(
              child: SingleChildScrollView(

                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 110, 30, 30),
                  child: Column(
                    children: [

                      Text("Add Items" , style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color:Colors.black ), ),
                      SizedBox (height: 60),
                      TextFormField(

                        decoration: new InputDecoration(
                          // fillColor: Colors.red, filled: true,
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          hintText: 'Enter Name',
                          helperText: 'Write your item Name',
                          labelText: 'Item Name',
                          prefixIcon: const Icon(
                            Icons.add_box_rounded,
                            color:kPrimaryColor,
                          ),
                          prefixText: ' ',
                          suffixText: '',
                          suffixStyle: const TextStyle(color: Colors.green),
                          focusedBorder:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),


                      SizedBox (height: 20),
                      TextFormField(

                        decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          hintText: 'Enter price',
                          helperText: 'Write your item price here',
                          labelText: 'Price',
                          prefixIcon: const Icon(
                            Icons.paid_sharp,
                            color:kPrimaryColor,
                          ),
                          prefixText: ' ',
                          suffixText: '',
                          suffixStyle: const TextStyle(color: Colors.green),
                          focusedBorder:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(55.0),
                          ),
                        ),
                      ),
                      SizedBox (height: 20),
                      TextFormField(
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.teal)
                            ), focusedBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(55.0),
                        ),
                            prefixIcon: const Icon(
                              Icons.description,
                              color:kPrimaryColor,
                            ),
                            // hintText: 'description',
                            helperText: 'Write your item description',
                            labelText: "Description"),

                        keyboardType: TextInputType.text,
                        inputFormatters: <TextInputFormatter>[
                          // FilteringTextInputFormatter.digitsOnly,

                        ], // Only numbers can be entered
                      ),
                      SizedBox (height: 60),

                      RaisedButton(
                        disabledColor:kPrimaryColor,
                        disabledTextColor: Colors.black,
                        onPressed: null,
                        child: Text('Add'),
                      ),
                    ],
                  ),
                ),
              ),
            )));

  }
}