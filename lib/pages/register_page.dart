import 'package:flutter/material.dart';
import 'package:motime/components/raised_button.dart';
import 'package:motime/utils/event_handlers.dart';


class RegisterPage extends StatefulWidget{
  final String _routeName;

  String get routeName => _routeName;

  RegisterPage(this._routeName);

  @override
  _RegisterPageState createState()=> _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage>{
  final GlobalKey <ScaffoldState> _scaffoldKey=new GlobalKey<ScaffoldState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  String displayName;
  bool passwordVisible;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }
  void onPressed(GlobalKey key,String routeName, Map data){
    EventHandlers.raisedButtonHandler(key, routeName, data);
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
            child: new Text("Sign Up Page", style: TextStyle(color: Colors.white,
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

      body: new Center(
        child: new Container(
          color: Colors.white,

          child: Center(
            child: ListView(

              children: <Widget>[

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*(0.31),
                  child: Image.asset('assets/images/logo.png'),
                ),


                Container(
                  padding: EdgeInsets.only( left: MediaQuery.of(context).size.width*0.1,
                    right: MediaQuery.of(context).size.width*0.1,),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*(0.30),
                  child:new Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only( top: MediaQuery.of(context).size.width*0.02,),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*(0.07),
                        child: TextField(
                          autofocus:false,
                          obscureText:false,
                          decoration: InputDecoration(
                            //labelText: "First Name",
                            hintText: "Username",
                            hintStyle: new TextStyle(

                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*(0.07),
                        child:TextField(
                          controller: emailController,
                          autofocus:false,
                          obscureText:false,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: new TextStyle(

                            ),
                          ),
                        )
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*(0.07),
                        child:TextField(
                          controller: passwordController,
                          autofocus:false,
                          obscureText:!passwordVisible,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                passwordVisible?
                                Icons.visibility:
                                Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: (){
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                            ),
                            hintText: "Password",
                            hintStyle: new TextStyle(
                            ),

                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only( left: MediaQuery.of(context).size.width*0.1,
                    right: MediaQuery.of(context).size.width*0.1,),
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*(0.07)),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*(0.23*0.33),
                  child:new RaisedButtonComponent("Sign up",Colors.cyan[800], Colors.white,FontWeight.bold,25,10,onPressed,
                    key: new GlobalKey<ScaffoldState>(),routeName: "pages/login", data: {"username":emailController.text == ''? null:emailController.text,
                      "password": passwordController.text == ''? null:passwordController.text,
                      "method": "Register"},
                  ),

                ),

              ],
            ),


          ),


        ),



      ),

    );




  }
}