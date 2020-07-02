import 'package:fitness_app/charts/weekly_bar_graph.dart';
import 'package:fitness_app/custom_pluging/custom_card.dart';
import 'package:fitness_app/custom_pluging/home_calorie_detail.dart';
import 'package:fitness_app/custom_pluging/home_data_detail.dart';
import 'package:fitness_app/custom_pluging/home_food_detail.dart';
import 'package:fitness_app/models/user_inputs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      key: PageStorageKey('homepage'),
      child: ListView(
        children: <Widget>[
          CustomCard(
            margin: true,
            child: HomeDateDetail(
              goalCalorie: 4000,
              foodCalorie: 932,
              exerciseCalorie: 500,
            ),
          ),
          CustomCard(
            child: Column(
              children: <Widget>[
                HomeCalorieDetail(
                  goalCalorie: 4000,
                  foodCalorie: 932,
                  exerciseCalorie: 500,
                ),
                Divider(
                  height: 30.0,
                ),
                HomeFoodDetail(
                  carbohydrate: 5,
                  carbohydrateTotal: 100,
                  protein: 122,
                  proteinTotal: 200,
                  fat: 144,
                  fatTotal: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
