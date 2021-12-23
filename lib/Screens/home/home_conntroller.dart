import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/cart/cart_model.dart';

enum HomeState { normal, cart }

class HomeController extends ChangeNotifier {
  HomeState homeState = HomeState.normal;

  List<Product> cart = [];

  void changeHomeState(HomeState state) {
    homeState = state;
    notifyListeners();
  }
}