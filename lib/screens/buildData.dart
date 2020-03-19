import 'dart:convert';

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
                  _uploadData(context);
                }),
            _str != '' ? Text(_str) : Text(' '),
          ],
        ));
  }

  void _uploadData(BuildContext context) async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/data/Data4Pakistan.json');
    var myMap = Map();
    List<dynamic> _raw = jsonDecode(jsonString);
// _raw.map(f)
    _raw.forEach((element) {
      Firestore.instance.collection('/districts').add(element);
    });

    print(_raw[1].toString());
  }
}
