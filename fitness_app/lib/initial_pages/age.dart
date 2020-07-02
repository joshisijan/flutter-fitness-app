import 'package:fitness_app/custom_pluging/custom_button_primary.dart';
import 'package:fitness_app/custom_pluging/custom_button_secondary.dart';
import 'package:fitness_app/models/user_inputs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class AgePage extends StatefulWidget {

  final PageController pageController;

  AgePage({
    @required this.pageController,
  });

  @override
  _AgePageState createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  int _age = 10;

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
            'YOUR AGE',
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
                  onPressed: (){
                    if(_age < 100){
                      setState(() {
                        _age += 1;
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
                    _age.toString(),
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
                  onPressed: (){
                    if(_age > 10){
                      setState(() {
                        _age -= 1;
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
                click: (){
                  _previousPage(context);
                },
              ),
              CustomPrimaryButton(
                title: 'Next',
                click: (){
                  userInput.setAge(_age);
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

  void _nextPage(BuildContext context){
    this.widget.pageController.nextPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  void _previousPage(BuildContext context){
    this.widget.pageController.previousPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }
}
