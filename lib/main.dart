import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: '6488133',
        key: null,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
            children: const <Widget>[
              ProductBox(
                  name: "iPhone",
                  description: "iPhone is the stylist phone ever",
                  price: 1000,
                  image: "https://shorturl.at/frAZ0"),
              ProductBox(
                  name: "Pixel",
                  description: "Pixel is the most featureful phone ever",
                  price: 800,
                  image: "pixel.png"),
              ProductBox(
                  name: "Laptop",
                  description: "Laptop is most productive development tool",
                  price: 2000,
                  image: "https://shorturl.at/nALS9"),
              ProductBox(
                  name: "Tablet",
                  description:
                      "Tablet is the most useful device ever for meeting",
                  price: 1500,
                  image: "tablet.png"),
              ProductBox(
                  name: "Pendrive",
                  description: "Pendrive is useful storage medium",
                  price: 100,
                  image: "pendrive.png"),
              ProductBox(
                  name: "Floppy Drive",
                  description: "Floppy drive is useful rescue storage medium",
                  price: 20,
                  image: "https://shorturl.at/gijFP"),
            ],
          ),
        ));
  }
}

class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }

  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    Uri uri = Uri.parse(image);
    return Container(
        padding: EdgeInsets.all(2),
        height: 200,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              uri.scheme == "https"
                  ? Image.network(image, width: 100, height: 100)
                  : Image.asset("assets/appimages/" + image,
                      width: 100, height: 100),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                          RatingBox(),
                        ],
                      )))
            ])));
  }
}

// class ProductBox extends StatelessWidget {
//   const ProductBox(
//       {Key? key,
//       required this.name,
//       required this.description,
//       required this.price,
//       required this.image})
//       : super(key: key);
//   final String name;
//   final String description;
//   final int price;
//   final String image;
//   @override
//   Widget build(BuildContext context) {
//     Uri uri = Uri.parse(image);
//     return Container(
//         padding: const EdgeInsets.all(2),
//         height: 120,
//         child: Card(
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//               uri.scheme == "https"
//                   ? Image.network(image)
//                   : Image.asset("assets/appimages/$image"),
//               Expanded(
//                   child: Container(
//                       padding: const EdgeInsets.all(5),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: <Widget>[
//                           Text(name,
//                               style:
//                                   const TextStyle(fontWeight: FontWeight.bold)),
//                           Text(description),
//                           Text("Price: $price"),
//                         ],
//                       )))
//             ])));
//   }
// }
