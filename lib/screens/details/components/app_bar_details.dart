import 'package:flutter/material.dart';

AppBar detailsAppBar() {
  return AppBar(
    elevation: 0,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.share),
        onPressed: null,
      ),
      IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: null,
      ),
    ],
  );
}
