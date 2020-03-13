import 'package:flutter/material.dart';



class ComparisonsPage extends StatefulWidget {
  @override
  _ComparisonsPageState createState() => _ComparisonsPageState();
}

class _ComparisonsPageState extends State<ComparisonsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade200,
      child: Center(child: Text('Comparisons ',style: Theme.of(context).textTheme.display1,)),
      
    );
  }
}