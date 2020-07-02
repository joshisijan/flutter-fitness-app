import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final child;
  final margin;

  CustomCard({@required this.child, this.margin = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: this.child,
      ),
      margin: EdgeInsets.only(
        top: 0.0,
        left: 0.0,
        right: 0.0,
        bottom: this.margin ? 10.0 : 0.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
    );
  }
}
