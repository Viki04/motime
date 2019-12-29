import 'package:flutter/material.dart';

class RaisedButtonComponent extends StatefulWidget{

  final String _btnText;
  final Color _btnBackgroundColor;
  final Color _btnColor;
  final FontWeight _btnFontWeight;
  final double _btnFontSize;
  final double _btnRadius;
  final Function _eventHandler;
  final GlobalKey key;
  final String routeName;
  Map data = {};


  RaisedButtonComponent(this._btnText, this._btnBackgroundColor,
      this._btnColor, this._btnFontWeight, this._btnFontSize, this._btnRadius,
      this._eventHandler, {this.key,
        this.routeName,this.data});


  String get btnText => _btnText;

  Color get btnBackgroundColor => _btnBackgroundColor;

  Color get btnColor => _btnColor;

  FontWeight get btnFontWeight => _btnFontWeight;

  double get btnFontSize => _btnFontSize;

  double get btnRadius => _btnRadius;

  Function get eventHandler => _eventHandler;


  @override
  _RaisedButtonState createState()=> _RaisedButtonState();

}

class _RaisedButtonState extends State<RaisedButtonComponent>{


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      color:widget.btnBackgroundColor,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
//              new Container(
//                child: new Icon(FontAwesomeIcons.facebook),
//                margin: const EdgeInsets.only(right: 10.0),
//              ),
          new Text(
              widget.btnText,
              style:new TextStyle(
                  color: widget.btnColor,
                  fontSize: widget.btnFontSize,
                  fontWeight: widget.btnFontWeight
              )
          ),
        ],
      ),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(widget.btnRadius),
      ),
      onPressed:(){
        widget.eventHandler(widget.key,widget.routeName,widget.data);
      },
    );
  }
}
//posebna genericka komponenta RaisedButton koja ja povikuvame globalno na povekje ekrani i vrsime razlicni funkcii so istata
// poradi toa sto ovaa komponenta  vo daden slucaj izvrsuva razlicna funkcija za odreden nastan poradi toa go koristime factory paternot
