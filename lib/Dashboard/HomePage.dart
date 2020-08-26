import 'package:flutter/material.dart';
import 'DashBoardItem/imageSlider.dart';
import 'DashBoardItem/manPowers.dart';

class HomePage extends StatefulWidget{
  @override
  
 _HomePageState createState() => _HomePageState();
  

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: Colors.grey[200],
      child: ListView(
        
        shrinkWrap: true,
        children: <Widget>[
          ImageSlider(),
          ManPower(),

        ],
      ),
    ),
  );
  }
  
}