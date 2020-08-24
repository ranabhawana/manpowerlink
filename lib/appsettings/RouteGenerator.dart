import 'package:flutter/material.dart';
import 'package:manpower/Dashboard/dashboard.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    //getting arguments passed in while calling navigator.pusnamed

    final args = settings.arguments;

    switch (settings.name){
      case '/':
      return MaterialPageRoute(builder: (_) => DashBoard());
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
