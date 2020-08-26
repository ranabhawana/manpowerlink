import 'package:flutter/material.dart';
import 'package:manpower/appsettings/theme.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    // return UserAccountsDrawerHeader(
    //   accountName: Text("Amir Suwal"),
    //   accountEmail: Text("suwala01@gmail.com"),
    //   currentAccountPicture: CircleAvatar(
    //     backgroundColor:
    //     Theme.of(context).platform == TargetPlatform.iOS
    //         ? Colors.blue
    //         : Colors.white,
    //     child: Text(
    //       "A",
    //       style: TextStyle(fontSize: 40.0),
    //     ),
    //   ),
    // );

    return Container(
      width: MediaQuery.of(context).size.width/1.6,
      child: Drawer(
        child: Column(
          children: [
            createDrawerHeader(),
            createDrawerBodyItem(
              icon: Icons.home,
              text: 'DashBoard',
              // onTap: ()=> Navigator.pushReplacement(context, PageRoutes.home)
            ),
            Divider(
              height: 2,
            ),
            createDrawerBodyItem(icon: Icons.phone, text: 'Phone'),
            Divider(
              height: 2,
            ),
            createDrawerBodyItem(icon: Icons.pages, text: 'About Man power link'),
            Divider(
              height: 2,
            ),
            createDrawerBodyItem(icon: Icons.people, text: 'Employees'),
            Divider(
              height: 2,
            ),
            createDrawerBodyItem(icon: Icons.cloud_circle, text: 'Why man power link'),
            Divider(
              height: 2,
            ),
            createDrawerBodyItem(icon: Icons.phone, text: 'Service'),
            Divider(
              height: 2,
            ),
            createDrawerBodyItem(icon: Icons.person, text: 'Job Seeker'),

            // ListTile(title: Text('App version'), onTap: () {})
          ],
        ),
      ),
    );
  }

  Widget createDrawerHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(color: AppColors.appbar1),
      child: Center(child: Text(
        'Welcome',
        style: AppTheme.body2_white,
      )),
    );
  }

  Widget createDrawerBodyItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
