import 'package:flutter/material.dart';
import 'package:snacks/models/products_model.dart';
import 'package:snacks/screens/details/details_products_screen.dart';

class ListProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => buildCardProduct(index, context),
        ),
      ),
    );
  }

  Widget buildCardProduct(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 15,
        top: 20,
        bottom: 0,
      ),
      child: Material(
        elevation: 6,
        color: Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsProductScreen(
                  products: products[index],
                ),
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.all(15),
                  child: Hero(
                    tag: products[index].id,
                    child: Image.asset(products[index].image),
                  ),
                ),
                Text(products[index].name),
                Divider(
                  color: Colors.teal[600],
                ),
                Text(
                  "R\$" + products[index].price.toString(),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
