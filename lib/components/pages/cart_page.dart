import 'package:flutter/material.dart';
import 'package:shopps/components/cartProducts.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int get hexColors => 0xFF8a4af3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Shoping Cart"),
        backgroundColor: Color(0xFF8a4af3),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons
            .shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("\$455"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                  color: Color(hexColors),
                  onPressed: () {},
                  textColor: Colors.white,
                  child: Text("Buy Now!")),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
      body: CartProducts(),
    );
  }
}
