import 'package:flutter/material.dart';

class SavedScreen extends StatefulWidget {
  static final String id = 'saved_screen';
  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(20),
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Saved",
            style: TextStyle(
                fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Collect places to stay and things to do by tapping the heart icon",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black26,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/savedScreenImage.jpeg'),
                    fit: BoxFit.fill)),
          )
        ],
      ),
    );
  }
}
