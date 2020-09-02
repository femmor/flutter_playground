import 'package:flutter/material.dart';
import 'package:flutter_playground/CartApp/product_model.dart';

class ProductScreen extends StatelessWidget {
  // value setter callback
  final ValueSetter<ProductModel> _valueSetter;

  ProductScreen(this._valueSetter);

  List<ProductModel> products = [
    ProductModel("Samsung", 500),
    ProductModel("LG Phone", 200),
    ProductModel("iPhone ", 700),
    ProductModel("Nokia", 400),
    ProductModel("Motorola", 550),
    ProductModel("Bluetooth", 150),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              products[index].name,
              style: TextStyle(fontSize: 20.0),
            ),
            leading: Icon(Icons.phone_android),
            trailing: Text(
              "\$${products[index].price.toString()}",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              _valueSetter(products[index]);
              final snackBar = SnackBar(
                backgroundColor: Colors.green,
                content: Text('Product added successfully'),
                action: SnackBarAction(
                  label: 'Undo',
                  textColor: Colors.white,
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: products.length,
      ),
    );
  }
}
