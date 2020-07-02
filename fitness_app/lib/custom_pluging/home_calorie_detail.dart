import 'package:flutter/material.dart';

class HomeCalorieDetail extends StatelessWidget {
  final int goalCalorie;
  final int foodCalorie;
  final int exerciseCalorie;

  HomeCalorieDetail(
      {@required this.goalCalorie,
      @required this.foodCalorie,
      @required this.exerciseCalorie});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              this.goalCalorie.toString(),
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            Text(
              'Goal',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 8.0,
                  ),
            ),
          ],
        ),
        Text(
          '-',
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        Column(
          children: <Widget>[
            Text(
              this.foodCalorie.toString(),
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Text(
              'Food',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 8.0,
                  ),
            ),
          ],
        ),
        Text('+'),
        Column(
          children: <Widget>[
            Text(
              this.exerciseCalorie.toString(),
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            Text(
              'Exercise',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 8.0,
                  ),
            ),
          ],
        ),
        Text('='),
        Column(
          children: <Widget>[
            Text(
              remainingCalorie().toString(),
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            Text(
              'Remaining',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 8.0,
                  ),
            ),
          ],
        ),
      ],
    );
  }

  int remainingCalorie() {
    return (this.goalCalorie - this.foodCalorie + this.exerciseCalorie);
  }
}
