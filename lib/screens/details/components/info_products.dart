import 'package:flutter/material.dart';
import 'package:snacks/models/products_model.dart';
import 'package:snacks/screens/details/components/buy_button.dart';

class InfoProducts extends StatelessWidget {
  ProductsModel products;
  InfoProducts({this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            products.description,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 185,
          ),
          BuyButton(),
        ],
      ),
    );
  }
}
