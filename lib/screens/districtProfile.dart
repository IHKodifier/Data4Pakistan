import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:convert/convert.dart';

class DistrictProfilePage extends StatefulWidget {
  @override
  _DistrictProfilePageState createState() => _DistrictProfilePageState();
}

class _DistrictProfilePageState extends State<DistrictProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.pink[100],);
  }
}

Future _getDistrict() async {
  return await Firestore.instance.collection('districts').snapshots();
}
