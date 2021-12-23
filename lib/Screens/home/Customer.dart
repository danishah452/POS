import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.indigo.shade400,

        body:  SafeArea(
          child: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 110, 30, 30),
              child: Column(
                children: [

                  Text("Select Customers" , style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color:Colors.black ), ),
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
        ));

  }
}
