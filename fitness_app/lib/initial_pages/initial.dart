import 'package:fitness_app/custom_pluging/custom_button_primary.dart';
import 'package:fitness_app/custom_pluging/custom_button_secondary.dart';
import 'package:fitness_app/models/user_inputs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class InitialPage extends StatelessWidget {

  final PageController pageController;

  InitialPage({
    @required this.pageController,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Text(
            'My Fitness App',
            style: Theme.of(context).textTheme.title.copyWith(
              color: Colors.white70,
            ),
          ),
          Expanded(
            child: Container(
              child: Text('some text'),
            ),
          ),
          CustomPrimaryButton(
            title: 'Getting Started',
            click: (){
              _nextPage(context);
            },
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }

  void _nextPage(BuildContext context){
    this.pageController.nextPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

}
