import 'package:flutter/material.dart';
import 'pages/ProductsDetail.dart';


class Products extends StatefulWidget {
  Products({Key key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Iphone",
      "picture": "images/iphones/iphone1.jpg",
      "oldPrice": 999,
      "price": 400,
    },
    {
      "name": "Iphone 2",
      "picture": "images/iphones/iphone2.jpg",
      "oldPrice": 999,
      "price": 400,
    },
    {
      "name": "Iphone 3",
      "picture": "images/iphones/iphone3.jpg",
      "oldPrice": 999,
      "price": 400,
    },
    {
      "name": "Iphone 4",
      "picture": "images/iphones/iphone4.jpg",
      "oldPrice": 999,
      "price": 400,
    },
    {
      "name": "Iphone 5",
      "picture": "images/iphones/iphone5.jpg",
      "oldPrice": 999,
      "price": 400,
    },
    {
      "name": "Iphone 6",
      "picture": "images/iphones/iphone6.jpg",
      "oldPrice": 999,
      "price": 400,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProducts(
            productName: productList[index]["name"],
            productPicture: productList[index]["picture"],
            productOldPrice: productList[index]["oldPrice"],
            productPrice: productList[index]["price"],
          );
        });
  }
}

class SingleProducts extends StatelessWidget {
  final productName;
  final productPicture;
  final productPrice;
  final productOldPrice;

  SingleProducts({
    this.productName,
    this.productOldPrice,
    this.productPicture,
    this.productPrice,
  });

  int get hexColors => 0xFF8a4af3;

  @override
  Widget build(BuildContext context) {
    return Card(
     child: Hero(child: Material(child: InkWell(
       onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProductsDetail(
            productsDetailName: productName,
            productsDetailPicture: productPicture,
            productsDetailPrice: productPrice,
            productsDetailOldPrice: productOldPrice,

       ))),
       child: GridTile(
         footer: Padding(
           padding: const EdgeInsets.fromLTRB(0, 2, 0, 4),
           child: Container(
             color: Colors.white70,
             child: ListTile(
               leading: Text(productName, style: TextStyle(
                 fontWeight: FontWeight.bold
               ),),
               title: Text("\$$productPrice",style: TextStyle(fontWeight: FontWeight.bold,color: Color(hexColors)),),
               subtitle: Text("\$$productOldPrice",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45, decoration: TextDecoration.lineThrough),),
             ),
           ),
         ),
         child: Image.asset(productPicture,
         fit: BoxFit.cover,),
       ),
     ),), tag: productName,),

    );
  }
}
