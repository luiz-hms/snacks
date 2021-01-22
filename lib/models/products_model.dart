class ProductsModel {
  String image, name, description;
  int id;
  double price;

  ProductsModel({this.id, this.image, this.name, this.description, this.price});
}

List<ProductsModel> products = [
  ProductsModel(
    id: 1,
    name: "hamburguer 1",
    price: 25.0,
    description: desc,
    image: imgProduct,
  ),
  ProductsModel(
    id: 2,
    name: "hamburguer 2",
    price: 25.0,
    description: desc,
    image: imgProduct,
  ),
  ProductsModel(
    id: 3,
    name: "hamburguer 3",
    price: 25.0,
    description: desc,
    image: imgProduct,
  ),
  ProductsModel(
    id: 4,
    name: "hamburguer 4",
    price: 25.0,
    description: desc,
    image: imgProduct,
  ),
  ProductsModel(
    id: 5,
    name: "hamburguer 5",
    price: 25.0,
    description: desc,
    image: imgProduct,
  ),
  ProductsModel(
    id: 6,
    name: "hamburguer 6",
    price: 25.0,
    description: desc,
    image: imgProduct,
  ),
  ProductsModel(
    id: 7,
    name: "hamburguer 7",
    price: 25.0,
    description: desc,
    image: imgProduct,
  ),
  ProductsModel(
    id: 8,
    name: "hamburguer 8",
    price: 25.0,
    description: desc,
    image: imgProduct,
  ),
  ProductsModel(
    id: 9,
    name: "hamburguer 9",
    price: 25.0,
    description: desc,
    image: imgProduct,
  ),
  ProductsModel(
    id: 10,
    name: "hamburguer 10",
    price: 25.0,
    description: desc,
    image: imgProduct,
  ),
];
String desc = "Um hmaburguer bom";
String imgProduct = "assets/images/burguer.png";
