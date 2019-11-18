import 'package:app/Buttons/reasonDropdowns.dart';
import 'package:flutter/material.dart';

TextEditingController controller = TextEditingController();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _askedStaff = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: Text(
          "NTI MATAPP",
        ),
      ),
      /////////////////
      ////////////////

      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                /* Text(
                  'matapp',
                  style: TextStyle(fontSize: 25, color: Colors.deepPurple[900]),
                ), */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      padding: EdgeInsets.all(1.0),
                      icon: Icon(
                        Icons.sentiment_very_satisfied,
                        color: Colors.green[700],
                        size: 70,
                      ),
                      onPressed: () {
                        print("filled background");
                      },
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                      padding: EdgeInsets.all(1.0),
                      icon: Icon(
                        Icons.sentiment_satisfied,
                        color: Colors.lime[700],
                        size: 70,
                      ),
                      onPressed: () {
                        print("filled background");
                      },
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                      padding: EdgeInsets.all(1.0),
                      icon: Icon(
                        Icons.sentiment_dissatisfied,
                        color: Colors.deepOrange[400],
                        size: 70,
                      ),
                      onPressed: () {
                        print("filled background");
                      },
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                      padding: EdgeInsets.all(1.0),
                      icon: Icon(
                        Icons.sentiment_very_dissatisfied,
                        color: Colors.red[800],
                        size: 70,
                      ),
                      onPressed: () {
                        print("filled background");
                      },
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Informerat personal?",
                      style: TextStyle(fontSize: 24, color: Colors.grey[800]),
                    ),
                    Checkbox(
                      onChanged: (bool resp) {
                        setState(() {
                          _askedStaff = resp;
                        });
                      },
                      value: _askedStaff,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Anledning",
                      style: TextStyle(fontSize: 24, color: Colors.grey[800]),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ChooseReasonDropdown(),
                  ],
                ),
                Text(
                  "Orsak:",
                  style: TextStyle(fontSize: 24, color: Colors.grey[800]),
                ),
                FlatButton(
                  color: Colors.indigo[900],
                  textColor: Colors.white,
                  disabledColor: Colors.indigo[800],
                  disabledTextColor: Colors.white,
                  //padding: EdgeInsets.all(8.0),
                  //splashColor: Colors.blueAccent,
                  child: Text(
                    'Skicka in',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
