import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class _RatingDialogPageState extends State<RatingDialogPage> {

  @override
  Widget build(BuildContext context) {
    return new Container(
       // color: Colors.cyan[800],
    child: RatingDialog(
   icon: new Icon(Icons.movie,
   size: 50,color:Colors.cyan[800],),
      title:"Rate the movie",
      description: "Tap a star to set your rating. Add more description here if you want.",
      submitButton: "ok",
      alternativeButton:"Contact us instead?",
      positiveComment: "We are so happy to hear :)",
      negativeComment: "We're sad to hear :(",
      accentColor: Colors.cyan[800],
      onSubmitPressed: (int rating)
    {
    print("onSubmitPressed: rating = $rating");
    },
        onAlternativePressed: () {
          print("onAlternativePressed: do something");
        },
    ),
    );
  }
}


class RatingDialogPage extends StatefulWidget {

  @override
  _RatingDialogPageState createState() => new _RatingDialogPageState();
}
