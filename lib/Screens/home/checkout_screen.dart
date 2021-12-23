// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:google_fonts/google_fonts.dart';
//
//
// import '../../constants.dart';
// import 'checkout_model.dart';
// import 'invoice.dart';
//
//
// class CheckoutScreen extends StatefulWidget {
//   @override
//   _CheckoutScreenState createState() => _CheckoutScreenState();
// }
//
// class _CheckoutScreenState extends State<CheckoutScreen> {
//   Widget _listCards() {
//     return Expanded(
//       flex: 4,
//       child: Column(
//         children: <Widget>[
//           Expanded(
//             flex: 3,
//             child: Container(
//               // height: 67 * SizeConfig.heightMultiplier,
//               child: ListView.builder(
//                   scrollDirection: Axis.vertical,
//                   itemCount: checkoutDummyData.length,
//                   itemBuilder: (context, index) {
//                     return Slidable(
//                       actionPane: SlidableDrawerActionPane(),
//                       actionExtentRatio: 0.25,
//                       child: Container(
//                         color: Colors.white,
//                         child: ListTile(
//                           leading: CircleAvatar(
//                             backgroundColor: Colors.indigo.shade300,
//                             child: Text(checkoutDummyData[index]
//                                 .items
//                                 .substring(0, 1)
//                                 .toUpperCase()),
//                             foregroundColor: Colors.white,
//                           ),
//                           title: Text("1 x " + checkoutDummyData[index].items,
//                             style: GoogleFonts.alegreya(
//                                 color: Colors.black, fontSize: 20),
//                           ),
//                           subtitle: Text(
//                             "1 x " + checkoutDummyData[index].price + " = " +
//                                 checkoutDummyData[index].price,
//                             style: GoogleFonts.alegreya(
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.black, fontSize: 20),
//                           ),
//                         ),
//                       ),
//                       secondaryActions: <Widget>[
//                         IconSlideAction(
//                           caption: 'Delete',
//                           color: Colors.red,
//                           icon: Icons.delete,
//                           onTap: () {setState(() {
//                             checkoutDummyData.removeAt(index);
//                           });
//
//                           },
//                         ),
//                       ],
//                     );
//
//
//
//                   }),
//
//             ),
//
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       // appBar: AppBar(
//       //   backgroundColor: Colors.indigo.shade300,
//       //   automaticallyImplyLeading: false,
//       //   // title: Center(
//       //   //     child: Text(
//       //   //       Strings.checkout,
//       //   //       style: GoogleFonts.alegreya(fontSize: 22, color: Colors.white),
//       //   //     )),
//       // ),
//       body: SafeArea(
//         left: false,
//         right: false,
//         bottom: false,
//         child: Column(
//           children: <Widget>[_listCards(),
//             SizedBox(height: 10,),
//
//             InkWell(
//               child: Container(
//                 decoration: BoxDecoration(
//
//                       color: kPrimaryColor,
//
//
//                     borderRadius: BorderRadius.all(Radius.circular(25))),
//                 width: 130,
//                 height: 50 ,
//                 // padding: EdgeInsets.all(12.0),
//                 child: Center(
//                   child: Text(
//                   "Invoice",
//                     style: GoogleFonts.alegreya(
//                         fontSize: 20, color: Colors.white),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => Pdfview()));
//               },
//             ),
//             SizedBox(height: 10,),
//           ],
//         ),
//       ),
//     );
//   }
// }
