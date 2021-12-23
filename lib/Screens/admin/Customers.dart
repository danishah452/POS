import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import '../../constants.dart';
import 'drawer.dart';

void run() => runApp(Customers());

class Customers extends StatefulWidget {
  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // backgroundColor: Colors.indigo[400],
            appBar: AppBar(
              title: Text('Customers'),
              backgroundColor: kPrimaryColor,
            ),
            drawer: buildDrawer(context),
            body:  SafeArea(
              child: SingleChildScrollView(

                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 110, 30, 30),
                  child: Column(
                    children: [

                      Text("Add Customers" , style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color:Colors.black ), ),
                      SizedBox (height: 60),
                      TextFormField(

                        decoration: new InputDecoration(
                          // fillColor: Colors.red, filled: true,
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          hintText: 'Enter Name',
                          helperText: 'Write your full Name',
                          labelText: 'User Name',
                          prefixIcon: const Icon(
                            Icons.person,
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
                          hintText: 'Enter Email',
                          helperText: 'Write your Email here',
                          labelText: 'Email',
                          prefixIcon: const Icon(
                            Icons.attach_email_rounded,
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
                              Icons.add_ic_call_rounded,
                              color:kPrimaryColor,
                            ),
                            helperText: 'Write your Phone Number',
                            labelText: "Phone Number"),

                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,

                        ], // Only numbers can be entered
                      ),
                      SizedBox (height: 60),

                      RaisedButton(
                        disabledColor: kPrimaryColor,
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