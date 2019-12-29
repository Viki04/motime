import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motime/components/raised_button.dart';
import 'package:motime/utils/event_handlers.dart';

class PrimaryPage extends StatefulWidget{
  final String _routeName;
  String get routeName => _routeName;
  PrimaryPage(this._routeName);

  @override
 _PrimaryPageState createState()=>_PrimaryPageState();

}

class _PrimaryPageState extends State<PrimaryPage>{
  final GlobalKey <ScaffoldState> _scaffoldKey=new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
  }
  void onPressed(GlobalKey key,String routeName,Map data){
    EventHandlers.raisedButtonHandler(key, routeName,data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_scaffoldKey,
      body:new Container(
        color:Colors.white,
          child:new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Padding(padding: new EdgeInsets.all(5.0),),
              new SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*(0.55),
                child: new Container(
                    margin: const EdgeInsets.only(top:15, ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: new AssetImage("assets/images/logo.png"),
                      ),
                    )
                ),
              ),

              new Padding(padding: new EdgeInsets.all(5.0),),
              new Container(
                height: MediaQuery.of(context).size.height*(0.20),
                width: MediaQuery.of(context).size.width,
                child: new Column(

                  children: <Widget>[
                       new Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           new Padding(padding:new EdgeInsets.all(1.0),),

                          new SizedBox(
                            height: MediaQuery.of(context).size.height*(0.10),
                            width: MediaQuery.of(context).size.width*0.4,
                            child: new RaisedButtonComponent("Log In",Colors.cyan[800],Colors.white,FontWeight.normal,20,10,onPressed,
                                key: new GlobalKey<ScaffoldState>(),routeName: "pages/login"),
                          ),
                          new Padding(padding: new EdgeInsets.all(5.0),),
                          new SizedBox(
                            height: MediaQuery.of(context).size.height*(0.10),
                            width: MediaQuery.of(context).size.width*0.4,
                            child: new RaisedButtonComponent("Sign Up",Colors.cyan[800],Colors.white,FontWeight.normal,20,10,onPressed,
                                key: new GlobalKey<ScaffoldState>(),routeName: "pages/register"),
                          )
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }

}