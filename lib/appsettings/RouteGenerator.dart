import 'package:flutter/material.dart';
import 'package:manpower/Dashboard/dashboard.dart';
import 'package:manpower/Profile/profile.dart';
import 'package:manpower/Register/login.dart';
import 'package:manpower/Splash.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    //getting arguments passed in while calling navigator.pusnamed

    final args = settings.arguments;

    switch (settings.name){
      case '/':
      return  MaterialPageRoute(builder: (_) => SplashScreen());
      case '/Dashboard':
      return MaterialPageRoute(builder: (_) => DashBoard());
      case '/Register':
      return MaterialPageRoute(builder: (_) => LoginPpage());
      case '/Profile':
      return MaterialPageRoute(builder: (_) => Profile());
      default:
      return _errorRoute();
    }

  }

   static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
