import 'package:flutter_auth/Screens/home/invoice.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/home/details_screen.dart';
import 'package:flutter_auth/Screens/home/home_conntroller.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../constants.dart';
import 'cart_model.dart';
import 'package:path/path.dart' as Path;
class CartDetailsView extends StatefulWidget {
  const CartDetailsView({Key key, this.controller, }) : super(key: key);
  final HomeController controller;
  @override
  _CartDetailsViewState createState() => _CartDetailsViewState();
}

class _CartDetailsViewState extends State<CartDetailsView> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Cart", style: Theme.of(context).textTheme.headline6),
            FlatButton(
                child: Text(
                  "Clear",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () => ScopedModel.of<CartModel>(context).clearCart())
          ],),

          SizedBox(height: defaultPadding),
          cartdata(),
          SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: kPrimaryColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pdfview()));
              },
              child: Text("Invoice"),
            ),
          )
        ],
      ),
    );
  }
  Widget cartdata(){

    return SingleChildScrollView(
        child: Container(
            color: Colors.white,
            height: MediaQuery.of(this.context).size.height*0.45,
            padding: EdgeInsets.all(8.0),
            child: Column(children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: ScopedModel.of<CartModel>(this.context,
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
                        ScopedModel.of<CartModel>(this.context,
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


}
