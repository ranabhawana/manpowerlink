import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appsettings/theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
  {

    final splashDelay = 5;
 @override
 void initState(){
   super.initState();
   _loadWidget();
   //Timer(Duration(seconds: 5), () => navigationToHomePage);
 }
 _loadWidget() async 
 {
   var _duration = Duration(seconds: splashDelay);
   return Timer(_duration, navigationToHomePage );
 }

 void navigationToHomePage(){
    Navigator.pushNamed(context, '/Dashboard');

 }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: AppColors.appbar),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 48.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.greenAccent,
                          size: 50,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0)
                    ),
                    Text("Man Power Link",
                    style: AppTheme.body2_white,
                    )
                  ],
                )),
              ),
              Expanded(flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  Padding(padding: EdgeInsets.only(top: 20.0),
                  ),
                  Text(
                    "Loading......",
                    style: AppTheme.body2_white,
                  )

                ],
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}
