import 'package:flutter/material.dart';
import 'package:manpower/Dashboard/HomePage.dart';
import 'package:manpower/Dashboard/drawer.dart';
import 'package:manpower/appsettings/theme.dart';

class DashBoard extends StatefulWidget {
static const String routeName = '/DashBoard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColors.appbar1,
          title: Text(
            'Man Power Link',
            style: AppTheme.body2_white,
          )),
          body: HomePage(),
    );
  }
}
