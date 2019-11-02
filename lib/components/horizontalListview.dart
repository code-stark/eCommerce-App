import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocations: "images/m1.jpeg",
            imageCaptions: "category1",
          ),
            Category(
            imageLocations: "images/m2.jpg",
            imageCaptions: "category2",
          ),
            Category(
            imageLocations: "images/m1.jpeg",
            imageCaptions: "category3",
          ),
            Category(
            imageLocations: "images/m2.jpg",
            imageCaptions: "category4",
          ),
            Category(
            imageLocations: "images/m1.jpeg",
            imageCaptions: "category5",
          ),
            Category(
            imageLocations: "images/m2.jpg",
            imageCaptions: "category6",
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final imageLocations;
  final imageCaptions;

  Category({this.imageCaptions, this.imageLocations});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          height: 80,
          child: ListTile(
            title: Image.asset(imageLocations),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    imageCaptions,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
