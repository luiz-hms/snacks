import 'package:flutter/material.dart';
import 'package:snacks/models/products_model.dart';

class TopDetails extends StatelessWidget {
  ProductsModel products;
  TopDetails({this.products});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            products.name,
            style: TextStyle(
              fontSize: 25,
              color: Colors.teal,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Preço \n',
                    style: TextStyle(color: Colors.teal),
                  ),
                  TextSpan(
                    text: 'R\$ ${products.price}',
                    style: TextStyle(fontSize: 25, color: Colors.teal),
                  ),
                ]),
              ),
              SizedBox(
                width: 100,
              ),
              Expanded(
                child: Hero(
                  tag: products.id,
                  child: Image.asset(
                    products.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
