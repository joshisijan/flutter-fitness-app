import 'package:fitness_app/custom_pluging/custom_button_primary.dart';
import 'package:fitness_app/custom_pluging/custom_button_secondary.dart';
import 'package:fitness_app/custom_pluging/custom_textfield_primary.dart';
import 'package:fitness_app/models/user_inputs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NamePage extends StatelessWidget {

  final PageController pageController;

  final _nameController = TextEditingController();

  NamePage({
    @required this.pageController,
  });

  @override
  Widget build(BuildContext context) {

    final userInput = Provider.of<UserInput>(context);

    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            'YOUR NAME',
            style: Theme.of(context).textTheme.title.copyWith(
              color: Colors.white70,
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextFieldPrimary(
                  controller: _nameController,
                  hint: 'Enter Your Name',
                ),
              ),
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
                  userInput.setName(_nameController.text.trim().toString());
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
    this.pageController.nextPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  void _previousPage(BuildContext context){
    this.pageController.previousPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

}
