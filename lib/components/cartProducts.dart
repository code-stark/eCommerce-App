import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  CartProducts({Key key}) : super(key: key);

  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnCarts = [
    {
      "name": "Iphone",
      "picture": "images/m1.jpeg",
      "oldPrice": 999,
      "price": 400,
      "size": "XL",
      "color": "Red",
      "quantity": 3
    },
    {
      "name": "Iphone 2",
      "picture": "images/m1.jpeg",
      "oldPrice": 999,
      "price": 400,
      "size": "MM",
      "color": "Orange",
      "quantity": 3
    },
    {
      "name": "Iphone 3",
      "picture": "images/m1.jpeg",
      "oldPrice": 999,
      "price": 400,
      "size": "LL",
      "color": "blue",
      "quantity": 3
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnCarts.length,
      itemBuilder: (BuildContext context, int index) {
        return SingleCartProducts(
            cartProductName: productsOnCarts[index]["name"],
            cartProductColor: productsOnCarts[index]["color"],
            cartProductPrice: productsOnCarts[index]["price"],
            cartProductQty: productsOnCarts[index]["quantity"],
            cartProductPicture: productsOnCarts[index]["picture"],
            cartProductSize: productsOnCarts[index]["size"]);
      },
    );
  }
}

class SingleCartProducts extends StatelessWidget {
  int get hexColors => 0xFF8a4af3;
  final cartProductName;
  final cartProductPicture;
  final cartProductPrice;
  final cartProductSize;
  final cartProductColor;
  final cartProductQty;

  SingleCartProducts({
    this.cartProductColor,
    this.cartProductName,
    this.cartProductPicture,
    this.cartProductPrice,
    this.cartProductQty,
    this.cartProductSize,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cartProductPicture,width: 80,height: 80,),
        title: Text(cartProductName,style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    cartProductSize,
                    style: TextStyle(
                        color: Color(hexColors), fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(12, 8, 8, 8),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(cartProductColor,
                      style: TextStyle(
                          color: Color(hexColors),
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$$cartProductPrice",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(hexColors)),
              ),
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.delete),padding: EdgeInsets.all(8), onPressed: () {},)
          ],
        ),
      ),
    );
  }
}
