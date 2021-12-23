import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/Screens/cart/cart_page.dart';
import 'package:flutter_auth/Screens/home/mapping.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../strings.dart';
import 'Customer.dart';
import 'anim_map.dart';
import 'booking_order_screen.dart';
import 'checkout_screen.dart';
import 'invoice.dart';
import 'location_provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: DefaultTabController(
                  length: 4,
                  child: Scaffold(
                    appBar: AppBar(
                      actions:  [
                        IconButton(
                          icon: const Icon(Icons.account_box),
                          tooltip: 'Logout',
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => WelcomeScreen()));
                          },
                        ),
                      ],
                      automaticallyImplyLeading: false,
                      backgroundColor:  kPrimaryColor,
                      bottom: TabBar(
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 2.0, color: Colors.orange.shade700),
                          insets: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        unselectedLabelColor: Colors.grey.shade500,
                        labelColor: Colors.orange.shade700,
                        labelPadding: EdgeInsets.all(5),
                        indicatorColor: Colors.red,
                        indicatorWeight: 1,
                        tabs: [
                          Tab(
                            child: FittedBox(
                              child: Text(
                                'Customer',
                                style: GoogleFonts.alegreya(
                                    color: Colors.white, fontSize: 19),
                              ),
                            ),
                          ),
                          Tab(
                            child: FittedBox(
                              child: Text(
                                'Track',
                                style: GoogleFonts.alegreya(
                                    color: Colors.white, fontSize: 19),
                              ),
                            ),
                          ),
                          // Tab(
                          //   child: FittedBox(
                          //     child: Text(
                          //       'Catalogue',
                          //       style: GoogleFonts.alegreya(
                          //           color: Colors.white, fontSize: 19),
                          //     ),
                          //   ),
                          // ),
                          Tab(
                            child: FittedBox(
                              child: Text(
                                'Booking',
                                style: GoogleFonts.alegreya(
                                    color: Colors.white, fontSize: 19),
                              ),
                            ),
                          ),
                          Tab(
                            child: FittedBox(
                              child: Text(
                                'Cart',
                                style: GoogleFonts.alegreya(
                                    color: Colors.white, fontSize: 19),
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: Center(
                        child: FittedBox(
                          child: Text(
                            Strings.welcomeScreenTitle,
                            style: GoogleFonts.alegreya(
                                color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                    body: TabBarView(
                      children: [

                        Container(
                          child: CustomerScreen(),
                        ),

                         Container(
                             child: MyHomePage(),
                         ),
                        // Container(
                        //   child: StockScreen(),
                        // ),
                        Container(
                          child: HomePage(),
                        ),
                        Container(
                            child: CartPage(),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
