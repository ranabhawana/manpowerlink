import 'package:flutter/material.dart';
import 'appsettings/RouteGenerator.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  onGenerateRoute: RouterGenerator.generateRoute,
 
 

),
);