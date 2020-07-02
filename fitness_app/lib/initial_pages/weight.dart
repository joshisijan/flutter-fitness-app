import 'package:fitness_app/custom_pluging/custom_button_primary.dart';
import 'package:fitness_app/custom_pluging/custom_button_secondary.dart';
import 'package:fitness_app/models/user_inputs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeightPage extends StatefulWidget {
  final PageController pageController;

  WeightPage({
    @required this.pageController,
  });

  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  int _weight = 50;

  @override
  Widget build(BuildContext context) {

    final userInput = Provider.of<UserInput>(context);

    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Text(
            'YOUR WEIGHT (Kg)',
            style: Theme.of(context).textTheme.title.copyWith(
                  color: Colors.white70,
                ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white70,
                  ),
                  onPressed: () {
                    if(_weight < 150){
                      setState(() {
                        _weight += 1;
                      });
                    }
                  },
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red[900],
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    _weight.toString(),
                    style: Theme.of(context).textTheme.display1.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white70,
                  ),
                  onPressed: () {
                    if(_weight > 30){
                      setState(() {
                        _weight -= 1;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomSecondaryButton(
                title: 'Previous',
                click: () {
                  _previousPage(context);
                },
              ),
              CustomPrimaryButton(
                title: 'Next',
                click: () {
                  userInput.setWeight(_weight);
                  _nextPage(context);
                },
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }

  void _nextPage(BuildContext context) {
    this.widget.pageController.nextPage(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeIn,
        );
  }

  void _previousPage(BuildContext context) {
    this.widget.pageController.previousPage(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeIn,
        );
  }
}
