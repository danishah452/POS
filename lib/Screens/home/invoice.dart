import  'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/cart/cart_model.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';

import 'package:http/http.dart' as http;
import 'package:pdf/pdf.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../constants.dart';
import 'PdfPreviewScreen.dart';




class Pdfview extends StatefulWidget {
   const Pdfview({Key key}) : super(key: key);


  @override
  _PdfviewState createState() => _PdfviewState();
}

class _PdfviewState extends State<Pdfview> {








   String localPath;
  var result;

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  final TextEditingController _controller = new TextEditingController();

  _startDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: startDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != startDate)
      // setState(() {
      startDate = picked;
    //});
  }

  _endDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: endDate.toLocal(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != endDate)
      //  setState(() {
      endDate = picked;
    //  });
  }
  String urlpdfPath = "";

  Color color;



  Future<File> LoadPDF() async {

    // var sFormattedDate = DateFormat('dd-MMM-yyyy').format(startDate).toString();
    // var eFormattedDate = DateFormat('dd-MMM-yyyy').format(endDate).toString();

    // print(eFormattedDate);
    final String BASE_URL =
        "http://192.168.88.251:8888/reports/rwservlet?akbari&report=I:\\ERPSource\\akbari_chemicals\\ar_customer_ledger.rdf&start_date=11-11-21&end_date=11-11-21&p1=46&pdf.pdf";
    // "http://192.168.88.251:8888/reports/rwservlet?akbari&report=I:\\ERPSource\\akbari_chemicals\\ar_customer_ledger.rdf&start_date=$sFormattedDate&end_date=$eFormattedDate&p1='$result'&pdf.pdf/";
    print('PP: Before Get Request in calling Ledger method, url: $BASE_URL');
    var data  = await http.get(BASE_URL);
    var bytes = data.bodyBytes;
    var dir = await getExternalStorageDirectory();
    File file = new File("${dir.path}/data.pdf");
    File urlFile = await file.writeAsBytes(bytes);
    return urlFile;
  }


  @override
  void initState() {

    super.initState();

    // LoadPDF().then((f) {
    //   setState(() {
    //     urlpdfPath = f.path;
    //   });
    // });
  }


  int _selectedIndex = 0;



  // Widget ListItems() {
  //   return  Container(
  //     padding: EdgeInsets.all(8),
  //     child: FutureBuilder<List<Userlist>>(
  //
  //         builder: (context, snapshot) {
  //           var data = snapshot.data;
  //           return ListView.builder(
  //               itemCount: data?.length,
  //               itemBuilder: (context, index) {
  //                 if (!snapshot.hasData) {
  //                   return Center(child: CircularProgressIndicator());
  //                 }
  //                 return InkWell(
  //
  //                   child: Card(
  //                     child: ListTile(
  //                       selected: index == _selectedIndex,
  //                       title: Column(
  //                           children: [
  //
  //                             Row(
  //                               children: [
  //                                 Center(
  //                                   child: Text(
  //                                     'ID= ${data[index].id}',
  //                                     style: TextStyle(
  //                                         fontSize: 12,
  //                                         fontWeight: FontWeight.bold,
  //                                         color: Colors.black
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ],
  //                             ),
  //                             SizedBox(height: 10,),
  //
  //                             Row(
  //                               children: [
  //                                 Text(
  //                                   'Name= ${data[index].customeR_NAME}',
  //                                   style: TextStyle(
  //                                       fontSize: 12,
  //                                       fontWeight: FontWeight.bold),
  //                                 ),
  //                               ],
  //                             )
  //                           ]),
  //
  //
  //                       // trailing: Text('More Info'),
  //                     ),
  //                   ),
  //                   onTap: (){
  //                     setState(() {
  //                       result =data[index].id;
  //                       print(result);
  //                       _selectedIndex = index;
  //
  //                     });
  //
  //
  //                   },
  //                 );
  //               });
  //         }),
  //   );
  // }





Widget cartdata(){

      return SingleChildScrollView(
    child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height*0.45,
        padding: EdgeInsets.all(8.0),
        child: Column(children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: ScopedModel.of<CartModel>(context,
                  rebuildOnChange: true)
                  .total,
              itemBuilder: (context, index) {
                return ScopedModelDescendant<CartModel>(
                  builder: (context, child, model) {
                    return ListTile(
                      title: Text(model.cart[index].title),
                      subtitle: Text(model.cart[index].qty.toString() +
                          " x " +
                          model.cart[index].price.toString() +
                          " = " +
                          (model.cart[index].qty *
                              model.cart[index].price)
                              .toString()),
                      trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                model.updateProduct(model.cart[index],
                                    model.cart[index].qty + 1);
                                // model.removeProduct(model.cart[index]);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                model.updateProduct(model.cart[index],
                                    model.cart[index].qty - 1);
                                // model.removeProduct(model.cart[index]);
                              },
                            ),
                          ]),
                    );
                  },
                );
              },
            ),
          ),
                Container(
                    // padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Total: \$ " +
                          ScopedModel.of<CartModel>(context,
                              rebuildOnChange: true)
                              .totalCartValue
                              .toString() +
                          "",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    )),
                // SizedBox(
                //     width: double.infinity,
                //     child: RaisedButton(
                //       color: Colors.yellow[900],
                //       textColor: Colors.white,
                //       elevation: 0,
                //       child: Text("BUY NOW"),
                //       onPressed: () {
                //         Navigator.push(context,
                //             MaterialPageRoute(builder: (context) => Pdfview()));
                //       },
                //     ))
              ])
          )
        );



}





  Widget dateHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Text(
        formatDate(startDate, [d, '-', M, '-', yyyy]),
        textScaleFactor: 1.2,
        style: GoogleFonts.alegreya(
            color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
          leading: BackButton(color: Colors.white),

          automaticallyImplyLeading: false,
          backgroundColor:   kPrimaryColor,
          elevation: 0,
          title: Text("Invoice",
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w700))),
      body: Container(
        // color: Colors.red,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: MaterialButton(
                      elevation: 2,
                      onPressed: () async {
                        await _startDate(context);
                        print(
                            formatDate(startDate, [d, '-', M, '-', yyyy]));
                      },
                      child: startDate == null
                          ? "Start Date"
                          : Text(
                        "${startDate.toLocal()}".split(' ')[0],
                        style: GoogleFonts.alegreya(
                            color: Colors.white, fontSize: 18),
                      ),
                      color: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Container(
                    child: MaterialButton(
                      elevation: 2,
                      onPressed: () async {
                        await _endDate(context);
                        print(formatDate(endDate, [d, '-', M, '-', yyyy]));
                      },
                      child: endDate == null
                          ? "End Date"
                          : Text(
                        "${endDate.toLocal()}".split(' ')[0],
                        style: GoogleFonts.alegreya(
                            color: Colors.white, fontSize: 18),
                      ),
                      color: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),

                     // cartdata()


                ],
              ),
            ),



            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            dateHeader(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Container(
                child: cartdata()
            ),
// Container(
//    child:MaterialButton(
//      elevation: 2,
//      onPressed: () {
//        showSearch(context: context, delegate: SearchUser());
//       },
//      child: Text(
//        'Search Customer',
//        style: GoogleFonts.alegreya(
//            color: Colors.white, fontSize: 18),
//      ),
//      color: Colors.green.shade200,
//      shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(8)),
//    ),
// ),






            // Container(
            //
            //   width: MediaQuery.of(context).size.width * 38,
            //   height: MediaQuery.of(context).size.height * 0.50,
            //   // color: Colors.black87,
            //
            //   // child: ListItems(),
            //
            // ),
// Container(
//     child: FloatingActionButton(
//     onPressed: ()async{
//     writeOnPdf();
//     await savePdf();
//
//     Directory documentDirectory = await getApplicationDocumentsDirectory();
//
//     String documentPath = documentDirectory.path;
//
//     String fullPath = "$documentPath/example.pdf";
//
//     Navigator.push(context, MaterialPageRoute(
//     builder: (context) => PdfPreviewScreen(path: fullPath,)
//     ));
//
//     },
//       child: Icon(Icons.save),
//     ), // This trailing comma makes
// ),




SizedBox(height: 70,),
            Container(
              child: MaterialButton(
                elevation: 2,
                onPressed: () {
                  setState(() {
                    LoadPDF().then((f) {

                      urlpdfPath = f.path;
                      if (urlpdfPath != null) {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>

                                    PdfViewPage(path: urlpdfPath)));
                      }
                    });


                  },);},
                child: Text(
                  'Show PDF',
                  style: GoogleFonts.alegreya(
                      color: Colors.white, fontSize: 18),
                ),
                color: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ],
        ),
      ),
    );

  }
}


class PdfViewPage extends StatefulWidget {
  final String path;

  const PdfViewPage({Key key, this.path}) : super(key: key);
  @override
  _PdfViewPageState createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  int _totalPages = 0;
  int _currentPage = 0;
  bool pdfReady = false;
  PDFViewController _pdfViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        backgroundColor: kPrimaryColor,


        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sales Invoice",style: TextStyle(color: Colors.white),),
          ],
        ),

      ),
      body: Stack(
        children: <Widget>[
          PDFView(
            filePath: widget.path,
            autoSpacing: true,
            enableSwipe: true,
            pageSnap: true,
            swipeHorizontal: true,
            nightMode: false,
            onError: (e) {
              print(e);
            },
            onRender: (_pages) {
              setState(() {
                _totalPages = _pages;
                pdfReady = true;
              });
            },
            onViewCreated: (PDFViewController vc) {
              _pdfViewController = vc;
            },
            onPageChanged: (int page, int total) {
              setState(() {});
            },
            onPageError: (page, e) {},
          ),
          !pdfReady
              ? Center(
            child: CircularProgressIndicator(),
          )
              : Offstage()
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _currentPage > 0
              ? FloatingActionButton.extended(
            backgroundColor: Colors.red,
            label: Text("Go to ${_currentPage - 1}"),
            onPressed: () {
              _currentPage -= 1;
              _pdfViewController.setPage(_currentPage);
            },
          )
              : Offstage(),
          _currentPage + 1 < _totalPages
              ? FloatingActionButton.extended(
            backgroundColor: Colors.green,
            label: Text("Go to ${_currentPage + 1}"),
            onPressed: () {
              _currentPage += 1;
              _pdfViewController.setPage(_currentPage);
            },
          )
              : Offstage(),
        ],
      ),
    );
  }

}

//
// class SearchUser extends SearchDelegate {
//   FetchUserList _userList = FetchUserList();
//   var resultsearch;
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             query = '';
//           },
//           icon: Icon(Icons.close))
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back_ios),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     return FutureBuilder<List<Userlist>>(
//         future: _userList.getuserList(query: query),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//           List<Userlist> data = snapshot.data;
//           return ListView.builder(
//               itemCount: data?.length,
//               itemBuilder: (context, index) {
//                 return InkWell(
//                   onTap: (){
//                     resultsearch =data[index].id;
//                     print(resultsearch);
//                     Navigator.push(context, new MaterialPageRoute(builder: (context) => new Pdfview()));
//
//                   },
//                   child: Card(
//                     child: ListTile(
//                       title: Column(
//                           children: [
//
//                             Row(
//                               children: [
//                                 Center(
//                                   child: Text(
//                                     'ID= ${data[index].id}',
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.black
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 10,),
//
//                             Row(
//                               children: [
//                                 Text(
//                                   'Name= ${data[index].customeR_NAME}',
//                                   style: TextStyle(
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ],
//                             )
//                           ]),
//
//
//                       // trailing: Text('More Info'),
//                     ),
//                   ),
//                 );
//               });
//         });
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return Center(
//       child: Text('Search User'),
//     );
//   }
// }
