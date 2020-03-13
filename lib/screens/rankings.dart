import 'package:flutter/material.dart';


class RankingsPage extends StatefulWidget {
  @override
  _RankingsPageState createState() => _RankingsPageState();
}

class _RankingsPageState extends State<RankingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade100,
      child: Center(child: Text('Rankings ',style: Theme.of(context).textTheme.display1,)),
      
    );
  }
}