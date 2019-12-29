import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatelessWidget {
  SharedPreferences sharedPreferences;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
       new RaisedButton(
         child: new Text("Read"),
          onPressed: _read(),
    ),
          new RaisedButton(
              child: new Text("Save"),
              onPressed: _save()
          )
        ],
      )
    );
  }

  _read() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final key = 'my_int_key';
    final value = sharedPreferences.getInt(key) ?? 0;
    print('read: $value');
  }
  _save() async {
    sharedPreferences= await SharedPreferences.getInstance();
    final key = "my_int_key";
    final value = 42;
    sharedPreferences.setInt(key, value);
    print('saved: $value');
  }

}