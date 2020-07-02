import 'package:fitness_app/initial_pages/age.dart';
import 'package:fitness_app/initial_pages/height.dart';
import 'package:fitness_app/initial_pages/initial.dart';
import 'package:fitness_app/initial_pages/name.dart';
import 'package:fitness_app/initial_pages/weight.dart';
import 'package:flutter/material.dart';


class FirstAppBase extends StatelessWidget {

  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Container(
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              InitialPage(
                pageController: _pageController,
              ),
              NamePage(
                pageController: _pageController,
              ),
              AgePage(
                pageController: _pageController,
              ),
              WeightPage(
                pageController: _pageController,
              ),
              HeightPage(
                pageController: _pageController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
