import 'package:flutter/material.dart';

class GlobalUtils {

  static void redirectFn(GlobalKey key,String routeName){
    Navigator.of(key.currentContext).pushNamed(routeName);
    //globalna fukncija za redirektiranje pomegju ekrani
  }

}