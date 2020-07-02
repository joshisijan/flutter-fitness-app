import 'package:fitness_app/app_base.dart';
import 'package:fitness_app/custom_pluging/custom_button_primary.dart';
import 'package:fitness_app/custom_pluging/custom_button_secondary.dart';
import 'package:fitness_app/models/user_inputs.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeightPage extends StatefulWidget {
  final PageController pageController;

  HeightPage({@required this.pageController});

  @override
  _HeightPageState createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
  int _feet = 5;

  int _inch = 5;

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
            'YOUR HEIGHT',
            style: Theme.of(context).textTheme.title.copyWith(
                  color: Colors.white70,
                ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white70,
                          ),
                          onPressed: () {
                            if(_feet < 9){
                              setState(() {
                                _feet += 1;
                              });
                            }
                          },
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red[900],
                          ),
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                _feet.toInt().toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .display1
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                              Text(
                                'ft',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white70,
                          ),
                          onPressed: () {
                            if(_feet > 3){
                              setState(() {
                                _feet -= 1;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white70,
                          ),
                          onPressed: () {
                            if(_inch < 11){
                              setState(() {
                                _inch += 1;
                              });
                            }else if(_inch == 11 && _feet < 9){
                              setState(() {
                                _inch = 0;
                                _feet += 1;
                              });
                            }
                          },
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red[900],
                          ),
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                _inch.toInt().toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .display1
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                              Text(
                                'inch',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white70,
                          ),
                          onPressed: () {
                            if(_inch > 0){
                              setState(() {
                                _inch -= 1;
                              });
                            }else if(_inch == 0 && _feet > 3){
                              setState(() {
                                _inch = 11;
                                _feet -= 1;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ],
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
                title: 'Finish',
                click: () {
                  userInput.setFeet(_feet);
                  userInput.setInch(_inch);
                  _saveData(
                    userInput.name,
                    userInput.age,
                    userInput.weight,
                    userInput.feet,
                    userInput.inch,
                  );
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context){
                      return AppBase();
                    },
                  ));
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

  void _saveData(String name, int age, int weight, int feet, int inch) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setInt('age', age);
    await prefs.setInt('weight', weight);
    await prefs.setInt('feet', feet);
    await prefs.setInt('inch', inch);
    await prefs.setBool('completed_setup', true);
  }
  void _previousPage(BuildContext context) {
    this.widget.pageController.previousPage(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeIn,
        );
  }
}
