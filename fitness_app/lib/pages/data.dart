import 'package:fitness_app/charts/weekly_bar_graph.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/custom_pluging/custom_card.dart';

class DataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: PageStorageKey('datapage'),
      child: ListView(
        children: <Widget>[
          CustomCard(
            child: Text(
              'Weekly Summary',
              style: Theme.of(context).textTheme.title,
              textAlign: TextAlign.center,
            ),
          ),
          CustomCard(
            child: Container(
              height: 220,
              width: double.maxFinite,
              child: WeeklyBarGraph(),
            ),
          ),
        ],
      ),
    );
  }
}
