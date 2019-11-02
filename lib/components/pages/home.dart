import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopps/components/horizontalListview.dart';
import 'package:shopps/components/pages/cart_page.dart';
import 'package:shopps/components/Products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final hexColors = 0xFF8a4af3;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color(hexColors), //or set color with: Color(0xFF0000FF)
    ));

    Widget imageCarousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/m1.jpeg"),
          AssetImage("images/m2.jpg"),
          AssetImage("images/w1.jpeg"),
          AssetImage("images/w3.jpeg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(seconds: 1),
        showIndicator: true,
        moveIndicatorFromBottom: 180.0,
        overlayShadowSize: 0.7,
        dotSize: 9.0,
        dotSpacing: 20.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Shopps"),
        backgroundColor: Color(0xFF8a4af3),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => Cart()));
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => Cart()));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Todo: Header
            UserAccountsDrawerHeader(
              accountEmail: Text("Mhimanshu.338@gmail.com"),
              accountName: Text("Himanshu Maurya"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(color: Color(hexColors)),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
              },
              title: Text("Home"),
              leading: Icon(
                Icons.home,
                color: Color(hexColors),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
              },
              title: Text("My Account"),
              leading: Icon(Icons.person, color: Color(hexColors)),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
              },
              title: Text("My Oders"),
              leading: Icon(Icons.shopping_cart, color: Color(hexColors)),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
              },
              title: Text("Earn Points"),
              leading: Icon(Icons.group_add, color: Color(hexColors)),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
              },
              title: Text("Category"),
              leading: Icon(Icons.category, color: Color(hexColors)),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
              },
              title: Text("Favorite"),
              leading: Icon(Icons.favorite, color: Color(hexColors)),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
              },
              title: Text("Settings"),
              leading: Icon(Icons.settings, color: Color(hexColors)),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
              },
              title: Text("About"),
              leading: Icon(Icons.help, color: Color(hexColors)),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          // Todo Image Carousel
          imageCarousel,
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
          ),
          // todo Horizontal
          HorizontalListView(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Recents Products",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
          ),
          // todo products
          Container(
            height: 320,
            child: Products(),
          )
        ],
      ),
    );
  }
}
