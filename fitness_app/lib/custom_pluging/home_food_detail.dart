import 'package:flutter/material.dart';

class HomeFoodDetail extends StatelessWidget {
  final int carbohydrate;
  final int carbohydrateTotal;
  final int protein;
  final int proteinTotal;
  final int fat;
  final int fatTotal;

  HomeFoodDetail(
      {@required this.carbohydrate,
      @required this.carbohydrateTotal,
      @required this.protein,
      @required this.proteinTotal,
      @required this.fat,
      @required this.fatTotal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 50.0,
              width: 50.0,
              child: CircularProgressIndicator(
                value: getPercentage(this.carbohydrate, this.carbohydrateTotal),
                strokeWidth: 12,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                backgroundColor: Colors.lightBlueAccent.withAlpha(150),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              this.carbohydrate.toString() + 'g of ' + this.carbohydrateTotal.toString() + 'g',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 10.0,
                  ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              'Carbohydrate',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 10.0,
                  ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              height: 50.0,
              width: 50.0,
              child: CircularProgressIndicator(
                value: getPercentage(this.protein, this.proteinTotal),
                strokeWidth: 12,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                backgroundColor: Colors.lightGreen.withAlpha(150),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              this.protein.toString() + 'g of ' + this.proteinTotal.toString() + 'g',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 10.0,
                  ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              'Protein',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 10.0,
                  ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              height: 50.0,
              width: 50.0,
              child: CircularProgressIndicator(
                value: getPercentage(this.fat, this.fatTotal),
                strokeWidth: 12,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                backgroundColor: Colors.redAccent.withAlpha(150),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              this.fat.toString() + 'g of ' + this.fatTotal.toString() + 'g',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 10.0,
                  ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              'Fat',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 10.0,
                  ),
            ),
          ],
        ),
      ],
    );
  }

  double getPercentage(int a, int b){
    return (a/b);
  }

}
