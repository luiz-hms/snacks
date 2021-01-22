import 'package:flutter/material.dart';

AppBar appBar(BuildContext contex) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: new IconThemeData(color: Colors.lightBlue[400]),
    title: Text(
      'SNACKS',
      style: TextStyle(
        color: Colors.blueGrey,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: null,
        //color: Colors.blueGrey[600],
      ),
    ],
  );
}
