import 'package:fitness_app/models/user_inputs.dart';
import 'package:fitness_app/pages/add.dart';
import 'package:fitness_app/pages/data.dart';
import 'package:fitness_app/pages/food.dart';
import 'package:fitness_app/pages/home.dart';
import 'package:fitness_app/pages/setting.dart';
import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';

class AppBase extends StatefulWidget {
  @override
  _AppBaseState createState() => _AppBaseState();
}

class _AppBaseState extends State<AppBase> {

  final PageStorageBucket bucket = PageStorageBucket();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: PageStorage(
          bucket: bucket,
          child: mainPage(_currentIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.redAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text('foods'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: kBottomNavigationBarIconSize,
            ),
            title: Text('add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            title: Text('data'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('setting'),
          ),
        ],
      ),
    );
  }

  Widget mainPage(int n){
    if(n == 4){
      return SettingPage();
    }else if(n == 1){
      return FoodPage();
    }else if(n == 2){
      return AddPage();
    }else if(n == 3){
      return DataPage();
    }
    return HomePage();
  }

}
