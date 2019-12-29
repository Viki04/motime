import 'package:flutter/material.dart';


class PomosenPage extends StatefulWidget{
  final String _routeName;
  final String text;

  String get routeName => _routeName;

  PomosenPage(this._routeName,this.text);

  @override
  _PomosenPageState createState()=> _PomosenPageState();

}

class _PomosenPageState extends State<PomosenPage>{
  final GlobalKey <ScaffoldState> _scaffoldKey=new GlobalKey<ScaffoldState>();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      body: new Container(
        color:Colors.pink,
      ),
    );

  }

}