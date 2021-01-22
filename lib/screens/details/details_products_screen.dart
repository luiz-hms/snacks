import 'package:flutter/material.dart';
import 'package:snacks/models/products_model.dart';
import 'package:snacks/screens/details/components/app_bar_details.dart';
import 'components/body_details.dart';

// ignore: must_be_immutable
class DetailsProductScreen extends StatelessWidget {
  ProductsModel products;
  DetailsProductScreen({this.products});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: detailsAppBar(),
      body: BodyDetails(
        products: products,
      ),
    );
  }
}
