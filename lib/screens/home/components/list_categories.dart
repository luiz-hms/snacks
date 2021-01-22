import 'package:flutter/material.dart';

class ListCategories extends StatefulWidget {
  @override
  _ListCategoriesState createState() => _ListCategoriesState();
}

class _ListCategoriesState extends State<ListCategories> {
  List<String> categories = [
    "Hamburguers",
    "Pizzas",
    "Bebidas",
    "Entradas",
    "Sobremesas"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index),
        ),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      selectedIndex == index ? Colors.teal : Colors.blueGrey),
            ),
            Container(
                margin: EdgeInsets.only(top: 5),
                height: 2,
                width: 30,
                color: selectedIndex == index
                    ? Colors.blueGrey
                    : Colors.transparent),
          ],
        ),
      ),
    );
  }
}
