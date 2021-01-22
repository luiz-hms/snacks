import 'package:flutter/material.dart';
import 'package:snacks/models/products_model.dart';
import 'package:snacks/screens/details/details_products_screen.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Luizinho'),
          accountEmail: Text('luizinho.luiz@hotmail.com'),
          currentAccountPicture: CircleAvatar(
            child: Text('LH'),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Minha Conta'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.shopping_basket),
          title: Text("Meus Pedidos"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsProductScreen(
                  products: products[1],
                ),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text("Favoritos"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
