import 'package:fitness_app/app_base.dart';
import 'package:fitness_app/first_app_base.dart';
import 'package:fitness_app/models/user_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.grey[900],
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Scaffold(
              body: Center(
                child: Text('Loading...'),
              ),
            );
          }else{
            if(snapshot.data == null){
              return ChangeNotifierProvider<UserInput>(
                create: (_) => UserInput(),
                child: FirstAppBase(),
              );
            }else{
              var detail = snapshot.data;
              if(detail.getBool('completed_setup') == null || detail.getBool('completed_setup') == false){
                return ChangeNotifierProvider<UserInput>(
                  create: (_) => UserInput(),
                  child: FirstAppBase(),
                );
              }else{
                return ChangeNotifierProvider<UserInput>(
                  create: (_) => UserInput(),
                  child: AppBase(),
                );
              }
            }
          }
        },
      ),
    );
  }
}
