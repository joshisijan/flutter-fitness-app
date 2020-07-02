import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;

class WeeklyData {
  final String day;
  final double value;
  final Color color;

  WeeklyData(
      {@required this.day, @required this.value, this.color = Colors.blue});
}

// ignore: must_be_immutable
class WeeklyBarGraph extends StatelessWidget {
  final data = [
    WeeklyData(
      day: 'sun',
      value: 1000,
      color: Colors.green,
    ),
    WeeklyData(
      day: 'mon',
      value: 500,
      color: Colors.green,
    ),
    WeeklyData(
      day: 'tue',
      value: 1100,
      color: Colors.lightGreen,
    ),
    WeeklyData(
      day: 'wed',
      value: 200,
      color: Colors.redAccent,
    ),
    WeeklyData(
      day: 'thu',
      value: 100,
      color: Colors.red,
    ),
    WeeklyData(
      day: 'fri',
      value: 0,
    ),
    WeeklyData(
      day: 'sat',
      value: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      [
        charts.Series(
          id: 'weekly report',
          domainFn: (x, _) => x.day,
          measureFn: (x, _) => x.value,
          colorFn: (x, _) => charts.ColorUtil.fromDartColor(x.color),
          data: data,
          labelAccessorFn: (x, _) => x.value.toString(),
        ),
      ],
      barRendererDecorator: charts.BarLabelDecorator<String>(
        labelAnchor: charts.BarLabelAnchor.end,
        outsideLabelStyleSpec: charts.TextStyleSpec(
          color: charts.ColorUtil.fromDartColor(Colors.white70),
        ),
      ),
      vertical: false,
      domainAxis: new charts.OrdinalAxisSpec(
          renderSpec: new charts.SmallTickRendererSpec(
              labelStyle: new charts.TextStyleSpec(
                  color: charts.ColorUtil.fromDartColor(Colors.white70)),
          ),
      ),
    );
  }
}
