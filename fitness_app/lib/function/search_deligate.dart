import 'package:flutter/material.dart';


class FoodSearchDelegate extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query = '';
        },
      ),
      SizedBox(
        width: 20.0,
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return BackButton();
  }



  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return _search();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return _search();
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: theme.primaryColor,
      primaryIconTheme: theme.primaryIconTheme,
      primaryColorBrightness: theme.primaryColorBrightness,
      primaryTextTheme: theme.primaryTextTheme,
    );
  }

  Widget _search(){
    return Container(
      child: Text(query.toString()),
    );
  }

}
