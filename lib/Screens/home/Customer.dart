import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key key}) : super(key: key);



  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}
String _myActivity;
String _myActivity1;
final formKey = new GlobalKey<FormState>();


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

                  Text("Select Customer" , style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color:Colors.black ), ),
                  SizedBox (height: 60),
              DropDownFormField(
                 titleText: 'Customers',
                hintText: 'Please Select Customer',
                value: _myActivity,
                onSaved: (value) {
                  setState(() {
                    _myActivity = value;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    _myActivity = value;
                  });
                },
                dataSource: [
                  {
                    "display": "Ali",
                    "value": "Ali",
                  },
                  {
                    "display": "Usman",
                    "value": "Usman",
                  },
                  {
                    "display": "Daniyal",
                    "value": "Daniyal",
                  },
                  {
                    "display": "Raheem",
                    "value": "Raheem",
                  },
                  {
                    "display": "Umair",
                    "value": "Umair",
                  },
                  {
                    "display": "Khizer",
                    "value": "Khizer",
                  },
                  {
                    "display": "Usama",
                    "value": "Usama",
                  },
                ],
                textField: 'display',
                valueField: 'value',
              ),



                  SizedBox (height: 20),
                  DropDownFormField(
                    titleText: 'Customers ID',
                    hintText: 'Please Select Customer ID',
                    value: _myActivity1,
                    onSaved: (value) {
                      setState(() {
                        _myActivity1 = value;
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        _myActivity1= value;
                      });
                    },
                    dataSource: [
                      {
                        "display": "001",
                        "value": "001",
                      },
                      {
                        "display": "123",
                        "value": "123",
                      },
                      {
                        "display": "221",
                        "value": "221",
                      },
                      {
                        "display": "1043",
                        "value": "1043",
                      },
                      {
                        "display": "1223",
                        "value": "1223",
                      },
                      {
                        "display": "1111",
                        "value": "1111",
                      },
                      {
                        "display": "1212",
                        "value": "1212",
                      },
                    ],
                    textField: 'display',
                    valueField: 'value',
                  ),



                  SizedBox (height: 60),

                  RaisedButton(
                    disabledColor: kPrimaryColor,
                    disabledTextColor: Colors.black,
                    onPressed: null,
                    child: Text('Done'),
                  ),
                ],
              ),
            ),
          ),
        ));

  }
}
