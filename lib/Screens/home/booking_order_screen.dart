import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/cart/cart_details_view.dart';
import 'package:flutter_auth/Screens/cart/cart_model.dart';
import 'package:flutter_auth/Screens/cart/cart_short_view.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../constants.dart';
import '../../practicehome.dart';
import 'details_screen.dart';
import 'home_conntroller.dart';

class HomePage extends StatelessWidget {
  final controller = HomeController();

  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta < -0.7) {
      controller.changeHomeState(HomeState.cart);
    } else if (details.primaryDelta > 12) {
      controller.changeHomeState(HomeState.normal);
    }
  }

  List<Product> _products = [
    Product(
        id: 1,
        title: "Apple",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 20.0,
        imgUrl: "https://img.icons8.com/plasticine/2x/apple.png",
        qty: 1),
    Product(
        id: 2,
        title: "Banana",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 40.0,
        imgUrl: "https://img.icons8.com/cotton/2x/banana.png",
        qty: 1),
    Product(
        id: 3,
        title: "Orange",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 20.0,
        imgUrl: "https://img.icons8.com/cotton/2x/orange.png",
        qty: 1),
    Product(
        id: 4,
        title: "Melon",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 40.0,
        imgUrl: "https://img.icons8.com/cotton/2x/watermelon.png",
        qty: 1),
    Product(
        id: 5,
        title: "Avocado",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 25.0,
        imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
        qty: 1),
    Product(
        id: 6,
        title: "Mango",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 28.0,
        imgUrl: "https://cdn-icons-png.flaticon.com/512/1054/1054117.png",
        qty: 1),
    Product(
        id: 7,
        title: "Avocado",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 25.0,
        imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
        qty: 1),
    Product(
        id: 8,
        title: "Mango",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 28.0,
        imgUrl: "https://cdn-icons-png.flaticon.com/512/1054/1054117.png",
        qty: 1),
    Product(
        id: 9,
        title: "Mango",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 28.0,
        imgUrl: "https://cdn-icons-png.flaticon.com/512/1054/1054117.png",
        qty: 1),
    Product(
        id: 10,
        title: "Avocado",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 25.0,
        imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
        qty: 1),
    Product(
        id: 11,
        title: "Mango",
        desc:"In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",
        price: 28.0,
        imgUrl: "https://cdn-icons-png.flaticon.com/512/1054/1054117.png",
        qty: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo.shade400,
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //
      //   backgroundColor: Colors.indigo.shade400,
      //   title: Text("Home"),
      //   // actions: <Widget>[
      //   //   IconButton(
      //   //     icon: Icon(Icons.shopping_cart),
      //   //     onPressed: () => Navigator.pushNamed(context, '/cart'),
      //   //   )
      //   // ],
      // ),
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Color(0xFFEAEAEA),
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, _) {
              return LayoutBuilder(
                  builder: (context, BoxConstraints constraints) {
                return Stack(children: [
                  AnimatedPositioned(
                    duration: panelTransition,
                    top: controller.homeState == HomeState.normal
                        ? headerHeight
                        : -(constraints.maxHeight -
                            cartBarHeight * 2 -
                            headerHeight),
                    left: 0,
                    right: 0,
                    height:
                        constraints.maxHeight - headerHeight - cartBarHeight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(defaultPadding * 1.5),
                          bottomRight: Radius.circular(defaultPadding * 1.5),
                        ),
                      ),
                      child: GridView.builder(
                        padding: EdgeInsets.all(8.0),
                        itemCount: _products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 6,
                            crossAxisSpacing: 8,
                            childAspectRatio: 1.0),
                        itemBuilder: (context, index) {
                          return ScopedModelDescendant<CartModel>(
                              builder: (context, child, model) {
                            return Card(
                                child: Column(children: <Widget>[
                              Image.network(
                                _products[index].imgUrl,
                                height: 75,
                                width: 90,
                              ),
                              Text(
                                _products[index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("\$" + _products[index].price.toString()),
                              RaisedButton(
                                color: kPrimaryColor,
                                textColor: Colors.white,
                                child: Text("Add"),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      transitionDuration:
                                          const Duration(milliseconds: 500),
                                      reverseTransitionDuration:
                                          const Duration(milliseconds: 500),
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          FadeTransition(
                                        opacity: animation,
                                        child: PracticeHome(
                                          product: _products[index],
                                          onProductAdd: () {
                                            model.addProduct(_products[index]);
                                          },
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              )
                            ]));
                          });
                        },
                      ),

                      // ListView.builder(
                      //   itemExtent: 80,
                      //   itemCount: _products.length,
                      //   itemBuilder: (context, index) {
                      //     return ScopedModelDescendant<CartModel>(
                      //         builder: (context, child, model) {
                      //       return ListTile(
                      //           leading: Image.network(_products[index].imgUrl),
                      //           title: Text(_products[index].title),
                      //           subtitle: Text("\$"+_products[index].price.toString()),
                      //           trailing: OutlineButton(
                      //               child: Text("Add"),
                      //               onPressed: () => model.addProduct(_products[index])));
                      //     });
                      //   },
                      // ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: panelTransition,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: controller.homeState == HomeState.normal
                        ? cartBarHeight
                        : (constraints.maxHeight - cartBarHeight),
                    child: GestureDetector(
                      onVerticalDragUpdate: _onVerticalGesture,
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        color: Color(0xFFEAEAEA),
                        alignment: Alignment.topLeft,
                        child: AnimatedSwitcher(
                          duration: panelTransition,
                          child: controller.homeState == HomeState.normal
                              ? CardShortView(controller: controller)
                              : CartDetailsView(controller: controller),
                        ),
                      ),
                    ),
                  ),
                ]);
              });
            },
          ),
        ),
      ),
    );
  }
}
