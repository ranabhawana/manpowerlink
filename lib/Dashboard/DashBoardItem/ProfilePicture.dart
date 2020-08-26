import 'package:flutter/material.dart';
import 'package:manpower/appsettings/theme.dart';
// ignore: must_be_immutable
class ProfilePicture extends StatelessWidget {
  IconData iconData;

  ProfilePicture({this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      // child: Container(
      //   height: 35,
      //   width: 35,
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.all(Radius.circular(10)),
      //       color: AppColors.appbar1),
      //   child: Padding(
      //     padding: const EdgeInsets.all(0.0),
      //     child: Icon(iconData,color: AppColors.white,),
      //   ),
      // ),
     child: CircleAvatar(
              radius: 36,
              backgroundColor: AppColors.appbar1,
              child: CircleAvatar(
                backgroundColor: Colors.grey[400],
                radius: 35,
                child: Padding(padding: EdgeInsets.all(0),
                child: Icon(iconData, color: AppColors.white,
                size: 40,
                ),
                ),
               // backgroundImage: AssetImage('images/batman.jpg'),
              ),
            )
    );
  }
}

class DecoratedboxCircle extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black87),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.pink),

    );
  }
}

