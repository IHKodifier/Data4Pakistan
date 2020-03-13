import 'package:flutter/material.dart';


class DistrictProfilePage extends StatefulWidget {
  @override
  _DistrictProfilePageState createState() => _DistrictProfilePageState();
}

class _DistrictProfilePageState extends State<DistrictProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Colors.purple.shade100,
      child: Center(child: Text('Dsitrict profiles',style: Theme.of(context).textTheme.display2.copyWith(color: Colors.black),)),
      
    );
  }
}