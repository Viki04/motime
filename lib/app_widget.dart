import 'package:flutter/material.dart';
import 'package:motime/pages/home_page.dart';
import 'package:motime/pages/login_page.dart';
import 'package:motime/pages/primary_page.dart';
import 'package:motime/pages/register_page.dart';

class AppWidget extends StatelessWidget{
  static final LoginPage loginPage=new LoginPage("pages/login");
  static final RegisterPage registerPage=new RegisterPage("pages/register");
  static final HomePage homePage=new HomePage("pages/home");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOtime',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: PrimaryPage("pages/primary"),
      routes: {
        loginPage.routeName: (BuildContext context)=> loginPage,
        registerPage.routeName: (BuildContext context)=> registerPage,
        homePage.routeName: (BuildContext context)=> homePage,
      },

    );
  }

}