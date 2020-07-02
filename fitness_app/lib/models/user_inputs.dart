import 'package:flutter/material.dart';

class UserInput with ChangeNotifier {

  String name ;
  int age = 0;
  int weight = 0;
  int feet = 0;
  int inch = 0;

  void setName(String inputName) {
    name = inputName;
    notifyListeners();
  }

  void setAge(int inputAge) {
    age = inputAge;
    notifyListeners();
  }

  void setWeight(int inputWeight) {
    weight = inputWeight;
    notifyListeners();
  }

  void setFeet(int inputFeet) {
    feet = inputFeet;
    notifyListeners();
  }

  void setInch(int inputInch) {
    inch = inputInch;
    notifyListeners();
  }

}
