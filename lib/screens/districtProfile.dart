import 'package:flutter/material.dart';
import 'package:convert/convert.dart';


class DistrictProfilePage extends StatefulWidget {
  @override
  _DistrictProfilePageState createState() => _DistrictProfilePageState();
}

class _DistrictProfilePageState extends State<DistrictProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Colors.purple.shade50,
      child: Center(child: Text('Dsitrict profiles',style: Theme.of(context).textTheme.display1,)),
      
      
    );
  }
}