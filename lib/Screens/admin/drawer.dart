import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/Screens/admin/Additems.dart';
import 'package:flutter_auth/Screens/admin/settings.dart';
import 'package:flutter_auth/Screens/admin/users.dart';
import '../../constants.dart';
import 'Customers.dart';
import 'Items.dart';
import 'Sales.dart';


Drawer buildDrawer(BuildContext context) {
  return new Drawer(
    elevation: 10,
    child: new ListView(
      children: <Widget>[
        new Container(

          child: new DrawerHeader(
            // child: new CircleAvatar(),
            child: Container(
              child: ListTile(

                // leading: Icon(Icons.favorite, color: Colors.red, size: 40),
                title: Text(
                  ' Admin Panel',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            margin: EdgeInsets.only(top: 40),
          ),

          // color: Colors.white,
        ),

        Divider(
          color: Colors.black,
          thickness: 1,
          height: 2,
        ),
        new Container(
          // color: Colors.black87,
          child: new Column(
            children: [
              InkWell(
                  child: ListTile(
                    leading: Icon(Icons.point_of_sale_sharp,
                        color: kPrimaryColor),
                    title: Text(
                      'Sales',
                      style: TextStyle(color: Colors.black, fontSize: 21),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminScreen()),
                    );
                  }
                  ),
              Divider(
                color: Colors.black87,
                thickness: 1,
                height: 2,
              ),
              InkWell(
                  child: ListTile(
                    leading: Icon(Icons.point_of_sale_sharp,
                        color: kPrimaryColor),
                    title: Text(
                      'Add Items',
                      style: TextStyle(color: Colors.black, fontSize: 21),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Additems()),
                    );
                  }
                  ),
              Divider(
                color: Colors.black87,
                thickness: 1,

                height: 2,
              ),
              InkWell(
                  child: ListTile(
                    leading: Icon(Icons.ac_unit, color:kPrimaryColor),
                    title: Text(
                      'Items',
                      style: TextStyle(color: Colors.black, fontSize: 21),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Items()),
                    );
                  }
                  ),
              Divider(
                color: Colors.black87,
                thickness: 1,
                height: 2,
              ),
              // // InkWell(
              // //     child: ListTile(
              // //       leading: Icon(Icons.ac_unit, color: Colors.orange),
              // //       title: Text(
              // //         'Hold',
              // //         style: TextStyle(color: Colors.white, fontSize: 21),
              // //       ),
              // //     ),
              // //     onTap: () {
              // //       Navigator.push(
              // //         context,
              // //         MaterialPageRoute(
              // //             builder: (context) => HoldScreen()),
              // //       );
              // //     }),
              // Divider(
              //   color: Colors.black87,
              //   thickness: 0.5,
              //   height: 1,
              // ),
              // InkWell(
              //     child: ListTile(
              //       leading: Icon(Icons.ac_unit, color: Colors.orange),
              //       title: Text(
              //         'Current Inventory',
              //         style: TextStyle(color: Colors.white, fontSize: 21),
              //       ),
              //     ),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => CurrentInventory()),
              //       );
              //     }),
              // Divider(
              //   color: Colors.black87,
              //   thickness: 0.5,
              //   height: 1,
              // ),
              // InkWell(
              //     child: ListTile(
              //       leading: Icon(Icons.ac_unit, color: Colors.orange),
              //       title: Text(
              //         'Tables',
              //         style: TextStyle(color: Colors.white, fontSize: 21),
              //       ),
              //     ),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => Tables()),
              //       );
              //     }),
              // Divider(
              //   color: Colors.black87,
              //   thickness: 0.5,
              //   height: 1,
              // ),
              // InkWell(
              //     child: ListTile(
              //       leading: Icon(Icons.ac_unit, color: Colors.orange),
              //       title: Text(
              //         'Close Register',
              //         style: TextStyle(color: Colors.white, fontSize: 21),
              //       ),
              //     ),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => CloseRegister()),
              //       );
              //     }),
              // Divider(
              //   color: Colors.black87,
              //   thickness: 0.5,
              //   height: 1,
              // ),
              InkWell(
                  child: ListTile(
                    leading: Icon(Icons.ac_unit, color: kPrimaryColor),
                    title: Text(
                      'Reports',
                      style: TextStyle(color: Colors.black, fontSize: 21),
                    ),
                  ),
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => Reports()),
                  //   );
                  // }
                  ),
              Divider(
                color: Colors.black87,
                thickness: 1,
                height: 2,
              ),
              InkWell(
                  child: ListTile(
                    leading: Icon(Icons.ac_unit, color: kPrimaryColor),
                    title: Text(
                      'Customer',
                      style: TextStyle(color: Colors.black, fontSize: 21),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Customers()),
                    );
                  }
                  ),
              Divider(
                color: Colors.black87,
                thickness: 1,
                height: 2,
              ),
              InkWell(
                  child: ListTile(
                    leading: Icon(Icons.ac_unit, color: kPrimaryColor),
                    title: Text(
                      'Users',
                      style: TextStyle(color: Colors.black, fontSize: 21),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UsersScreen()),
                    );
                  }),
              Divider(
                color: Colors.black87,
                thickness: 1,
                height: 2,
              ),
              InkWell(
                  child: ListTile(
                    leading: Icon(Icons.ac_unit, color:kPrimaryColor),
                    title: Text(
                      'Setting',
                      style: TextStyle(color: Colors.black, fontSize: 21),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );
                  }),
              Divider(
                color: Colors.black87,
                thickness: 1,
                height: 2,
              ),
              // InkWell(
              //     child: ListTile(
              //       leading: Icon(Icons.ac_unit, color: Colors.orange),
              //       title: Text(
              //         'Backup',
              //         style: TextStyle(color: Colors.white, fontSize: 21),
              //       ),
              //     ),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => Backup()),
              //       );
              //     }),
              // Divider(
              //   color: Colors.black87,
              //   thickness: 0.5,
              //   height: 1,
              // ),
              // InkWell(
              //     child: ListTile(
              //       leading: Icon(Icons.ac_unit, color: Colors.orange),
              //       title: Text(
              //         'Upgrade',
              //         style: TextStyle(color: Colors.white, fontSize: 21),
              //       ),
              //     ),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => Upgrade()),
              //       );
              //     }),
              // Divider(
              //   color: Colors.black87,
              //   thickness: 0.5,
              //   height: 1,
              // ),
              // InkWell(
              //     child: ListTile(
              //       leading: Icon(Icons.ac_unit, color: Colors.orange),
              //       title: Text(
              //         'Cloud Pin',
              //         style: TextStyle(color: Colors.white, fontSize: 21),
              //       ),
              //     ),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => CloudPin()),
              //       );
              //     }),
              // Divider(
              //   color: Colors.black87,
              //   thickness: 0.5,
              //   height: 1,
              // ),
              InkWell(
                child: ListTile(
                  leading: Icon(Icons.ac_unit, color: kPrimaryColor),
                  title: Text(
                    'LogOut',
                    style: TextStyle(color: Colors.black, fontSize: 21),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
              ),
              Divider(
                color: Colors.black87,
                thickness: 1,
                height: 5,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
