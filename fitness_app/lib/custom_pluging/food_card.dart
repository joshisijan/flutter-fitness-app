import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {

  final String title;
  final String link;
  final Function click;

  FoodCard({@required this.title, @required this.link, @required this.click});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.click,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(12.0),
            color: Colors.black.withAlpha(100),
            child: Image.network(
              this.link,
              fit: BoxFit.cover,
              width: double.maxFinite,
              height: double.maxFinite,
            ),
          ),
          Center(
            child: Container(
              color: Colors.black.withAlpha(150),
              padding: EdgeInsets.all(6),
              child: Text(
                this.title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
