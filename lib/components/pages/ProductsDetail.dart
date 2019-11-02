import 'package:flutter/material.dart';

class ProductsDetail extends StatefulWidget {
  final productsDetailName;
  final productsDetailPicture;
  final productsDetailPrice;
  final productsDetailOldPrice;

  ProductsDetail(
      {this.productsDetailName,
      this.productsDetailOldPrice,
      this.productsDetailPicture,
      this.productsDetailPrice});

  @override
  _ProductsDetailState createState() => _ProductsDetailState();
}

class _ProductsDetailState extends State<ProductsDetail> {
  int get hexColors => 0xFF8a4af3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text("Shopps"),
        backgroundColor: Color(0xFF8a4af3),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productsDetailPicture),
              ),
              footer: Container(
                color: Colors.white60,
                child: ListTile(
                  leading: Text(
                    widget.productsDetailName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.productsDetailOldPrice}",
                          style: TextStyle(
                              color: Colors.grey[800],
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.productsDetailPrice}",
                          style: TextStyle(
                              color: Color(hexColors),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // todo button
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose The Size"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                textColor: Color(hexColors),
                                child: Text("Cancel"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Colors"),
                            content: Text("Choose The Colors"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                textColor: Color(hexColors),
                                child: Text("Cancel"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose The Quantity"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                textColor: Color(hexColors),
                                child: Text("Cancel"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Color(hexColors),
                  textColor: Colors.white,
                  child: Text("Buy Now!"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: OutlineButton(
                    onPressed: () {},
                    color: Color(hexColors),
                    textColor: Colors.white,
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(color: Color(hexColors)),
                    ),
                    highlightedBorderColor: Colors.grey,
                    hoverColor: Color(hexColors),
                    splashColor: Color(hexColors),
                    disabledTextColor: Color(hexColors),
                    borderSide: BorderSide(color: Color(hexColors))),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Color(hexColors),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text("Product Name", style: TextStyle(
                  color: Colors.grey
                ),),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(widget.productsDetailName),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text("Product Brands", style: TextStyle(
                  color: Colors.grey
                ),),
              ),
               Padding(
                padding: EdgeInsets.all(5),
                child: Text("Brand X"),
              )
            ],
          ),
           Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text("Product Conditions", style: TextStyle(
                  color: Colors.grey
                ),),
              ),
               Padding(
                padding: EdgeInsets.all(5),
                child: Text("Searching"),
              )
            ],
          ),
          Divider(),
          Container(
            height: 360,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {

  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
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
          return SimilarSingleProducts(
            productName: productList[index]["name"],
            productPicture: productList[index]["picture"],
            productOldPrice: productList[index]["oldPrice"],
            productPrice: productList[index]["price"],
          );
        });
  }
}

// todo Similar products sections
class SimilarSingleProducts extends StatelessWidget {
  final productName;
  final productPicture;
  final productPrice;
  final productOldPrice;

  SimilarSingleProducts({
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
