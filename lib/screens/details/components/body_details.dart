import 'package:flutter/material.dart';
import 'package:snacks/models/products_model.dart';
import 'package:snacks/screens/details/components/info_products.dart';
import 'package:snacks/screens/details/components/top_details.dart';

// ignore: must_be_immutable
class BodyDetails extends StatelessWidget {
  ProductsModel products;
  BodyDetails({this.products});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.87,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      InfoProducts(
                        products: products,
                      ),
                    ],
                  ),
                ),
                TopDetails(
                  products: products,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
