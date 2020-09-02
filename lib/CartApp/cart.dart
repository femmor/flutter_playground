import 'package:flutter/material.dart';
import 'package:flutter_playground/CartApp/checkout_screen.dart';
import 'package:flutter_playground/CartApp/product_model.dart';
import 'package:flutter_playground/CartApp/product_screen.dart';

class CartApp extends StatefulWidget {
  @override
  _CartAppState createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  List<ProductModel> cart = [];
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Products",
              ),
              Tab(
                text: "Checkout",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProductScreen((selectedProduct) {
              setState(() {
                cart.add(selectedProduct);
                cart.forEach((item) {
                  sum = sum + item.price;
                });
              });
            }),
            CheckOutScreen(cart, sum),
          ],
        ),
      ),
    );
  }
}
