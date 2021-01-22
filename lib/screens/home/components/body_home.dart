import 'package:flutter/material.dart';
import 'package:snacks/screens/home/components/list_products.dart';

import 'list_categories.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListCategories(),
        ListProducts(),
      ],
    );
  }
}
