import 'package:flutter/material.dart';


class CustomSecondaryButton extends StatelessWidget {

  final String title;
  final Function click;

  CustomSecondaryButton({@required this.title, @required this.click});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(this.title),
      onPressed: this.click,
      fillColor: Colors.white,
      textStyle: TextStyle(
        color: Colors.red,
      ),
    );
  }
}
