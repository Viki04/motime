import 'package:flutter/material.dart';
import 'package:motime/components/raised_button.dart';
import 'package:motime/utils/event_handlers.dart';

import 'home_page.dart';

//final FirebaseAuth auth = FirebaseAuth.instance;

class LoginPage extends StatefulWidget{
  final String _routeName;

  String get routeName => _routeName;

  LoginPage(this._routeName);


  @override
  _LoginPageState createState()=> _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{
  final GlobalKey <ScaffoldState> _scaffoldKey=new GlobalKey<ScaffoldState>();
  TextEditingController emailController=new TextEditingController();
  TextEditingController passwordController=new TextEditingController();
  bool passwordVisible;


  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }
  void onPressed(GlobalKey key,String routeName,Map data){
    EventHandlers.raisedButtonHandler(key, routeName,data);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(

        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(

          title: new Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
            child: new Text("Log In Page", style: TextStyle(color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.04,
              fontWeight:FontWeight.normal,
            ),
            ),
          ),

          leading: new Container (
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: new IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: ()=> Navigator.pop(context, false),
              iconSize: MediaQuery.of(context).size.height * 0.04,

            ),),
          backgroundColor:Colors.cyan[800],
          bottomOpacity: 1,
          toolbarOpacity: 1,
          titleSpacing: 1,

        ),
      ) ,

      body: new Container(
        color:Colors.white,
        child: new ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*(0.60),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*(0.45),
                    child: new Column(
                      children: <Widget>[
                        new SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*(0.45),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                padding: EdgeInsets.only( left: MediaQuery.of(context).size.width * 0.1,
                                    right: MediaQuery.of(context).size.width * 0.1,
                                    bottom: MediaQuery.of(context).size.width * 0.1),
                                child: TextField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    //  border: InputBorder.none,
                                    icon: Icon(Icons.person,
                                      size: 37,
                                      color: Colors.cyan[800],
                                    ),
                                    hintText: 'Name',

                                  ),
                                ),
                              ),
                              new Container(
                                padding: EdgeInsets.only( left: MediaQuery.of(context).size.width * 0.1,
                                  right: MediaQuery.of(context).size.width * 0.1,),
                                child: TextField(
                                  controller: passwordController,
                                  obscureText:!passwordVisible,
                                  decoration: InputDecoration(
                                    suffix: IconButton(icon: Icon(
                                      passwordVisible?
                                          Icons.visibility:
                                           Icons.visibility_off,
                                    color: Theme.of(context).primaryColorDark,
                                    ),
                                        onPressed: () {
                                          setState(() {
                                            passwordVisible = !passwordVisible;
                                          });
                                        }
                                    ),
                                    icon: Icon(Icons.lock_open,
                                      size: 37,
                                      color: Colors.cyan[800],
                                    ),
                                    hintText: 'Password',

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  new SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*(0.15),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only( left: MediaQuery.of(context).size.width * 0.1,
                            right: MediaQuery.of(context).size.width * 0.1,),


                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*(0.075),
                          child:new RaisedButtonComponent("Login",Colors.cyan[800], Colors.white,FontWeight.bold,25,10,onPressed,
                            key: new GlobalKey<ScaffoldState>(),routeName: "pages/home", data: {"username":emailController.text == ''? null:emailController.text,
                              "password": passwordController.text == ''? null:passwordController.text,
                              "method": "Login"},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*(0.30),

              child: new Column(
                children: <Widget>[

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}