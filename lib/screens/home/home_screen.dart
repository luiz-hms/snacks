import 'package:flutter/material.dart';
import 'package:snacks/models/products_model.dart';
import 'package:snacks/screens/details/components/body_details.dart';
import 'package:snacks/screens/home/components/drawer.dart';

import 'components/app_bar.dart';
import 'components/body_home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: BodyHome(),
      drawer: drawer(context),
    );
  }
}
