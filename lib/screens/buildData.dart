import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BuildData extends StatefulWidget {
  @override
  _BuildDataState createState() => _BuildDataState();
}

class _BuildDataState extends State<BuildData> {
  String _str = ' ';
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Upload Data',
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(color: Colors.white),
                ),
                onPressed: () {
                  _uploadData();
                }),
            _str != '' ? Text(_str) : Text(' '),
          ],
        ));
  }

  void _uploadData() {
    //upload a small json for testing
    Firestore.instance.collection('/districts').add({
      "Province": "Balochistan",
      "District": "Awaran",
      "Year": 2004,
      "Poverty Rate (%)": 57,
      "National poverty rank (N)": 63,
      "Provincial poverty rank (N)": 9,
      "Number of poor (1,000s)": 63,
      "Access to improved drinking water (% of population)": "",
      "Access to piped water (% of population)": "",
      "Access to improved drinking water, excl": {
        " piped water (% of population)": ""
      }
    });
  }
}
