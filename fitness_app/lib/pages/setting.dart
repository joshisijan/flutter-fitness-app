import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: PageStorageKey('settingpage'),
      child: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text('Loading...'),
            );
          } else {
            if (snapshot.data == null) {
              return Center(
                child: Text('No data found'),
              );
            } else {
              var detail = snapshot.data;
              return Text(detail.getString('name'));
            }
          }
        },
      ),
    );
  }
}
