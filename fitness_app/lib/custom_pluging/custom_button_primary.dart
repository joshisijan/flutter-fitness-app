import 'package:flutter/material.dart';


class CustomPrimaryButton extends StatelessWidget {

  final String title;
  final Function click;

  CustomPrimaryButton({@required this.title, @required this.click});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(this.title),
      onPressed: this.click,
      fillColor: Colors.red[900],
      textStyle: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
