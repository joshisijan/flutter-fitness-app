import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeDateDetail extends StatelessWidget {

  final goalCalorie;
  final foodCalorie;
  final exerciseCalorie;

  HomeDateDetail({@required this.goalCalorie, @required this.foodCalorie, @required this.exerciseCalorie});

  final String date = DateFormat('EE, d MMM yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Today\'s Progress',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: LinearProgressIndicator(
              value: (this.foodCalorie - this.exerciseCalorie) / this.goalCalorie,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              backgroundColor: Colors.blue.withAlpha(150),
            ),
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            (this.foodCalorie - this.exerciseCalorie).toString() + ' calorie of ' + this.goalCalorie.toString() + ' calorie',
            style: Theme.of(context).textTheme.caption.copyWith(
              fontSize: 10.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(),
          Text(
            date,
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
