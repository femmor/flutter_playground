import 'package:flutter/material.dart';
import 'package:flutter_playground/CartApp/product_model.dart';

class CheckOutScreen extends StatelessWidget {
  final cart;
  final sum;
  // initialize it
  CheckOutScreen(this.cart, this.sum);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                cart[index].name,
                style: TextStyle(fontSize: 20.0),
              ),
              leading: Icon(Icons.phone_android),
              trailing: Text(
                "\$${cart[index].price.toString()}",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: cart.length,
          shrinkWrap: true,
        ),
        SizedBox(
          height: 40.0,
        ),
        Text(
          "Total = \$$sum",
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
