import 'package:flutter/material.dart';
import 'package:motime/utils/firebase_auth.dart';
import 'package:motime/utils/global_utils.dart';

class EventHandlers {

  //proverka na podatocite spored metodite za registracija i login
  static void raisedButtonHandler(GlobalKey key, String routeName,Map data)async {
    if (data != null) {
      if (data['username'] != null && data['password'] != null) {
        String response = await FirebaseUtils.firebaseHandler(
            data['method'], data['username'], data['password']);
        bool accessApproved = data['method'] == 'Login' ?
        response.split(' ')[0] == 'TOKEN:' ? true : false :
        response.split(' ')[0] == 'UID:' ? true : false;
        if (accessApproved) {
          print("potvrdeno redirektiraj $response");
          GlobalUtils.redirectFn(key, routeName);
        }
        else {
          print(response);
        }
      }
    }
    else {
      if (key != null && routeName != null) {
        GlobalUtils.redirectFn(key, routeName);
      }
    }
  }
}