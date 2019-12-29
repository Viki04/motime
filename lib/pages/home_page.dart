import 'package:flutter/material.dart';
import 'package:motime/pages/movie_list.dart';


class HomePage extends StatefulWidget{
  final String _routeName;

  String get routeName => _routeName;

  HomePage(this._routeName);

 @override
  _HomePageState createState()=> _HomePageState();

}

class _HomePageState extends State<HomePage>{
  final GlobalKey <ScaffoldState> _scaffoldKey=new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      body: MaterialApp(
        title:'Movie list',
        home: new MovieList(),
      )
    );

  }

}