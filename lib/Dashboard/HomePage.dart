import 'package:flutter/material.dart';

import 'DashBoardItem/imageSlider.dart';

class HomePage extends StatefulWidget{
  @override
  
 _HomePageState createState() => _HomePageState();
  

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(
      children: <Widget>[
        ImageSlider(),

      ],
    ),
  );
  }
  
}