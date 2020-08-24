import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:manpower/appsettings/theme.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImagesliderState createState() => _ImagesliderState();
}

class _ImagesliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.appbar1, width: 2),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: EdgeInsets.all(0.0),
            child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Carousel(
                  images: [
                    NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT9FyU4c98h8848LkoktmFCZ32_dPFu-A0mvQ&usqp=CAU'),
                    NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYHdNz5EYkyzJ1_52_EeTHLX8dHlKQlKU1_w&usqp=CAU'),
                    NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/JPTy8gbzGDuS3K6-incuCWT43HxObb3G3y0xYZwGESbVhkQCnAw2_H2iohiPv4XnyT-PyoZF3sP1a_VAO0YO20PHJ6sT6CxGiYmj4rZbyw4zGHKYbfW7AwO33w"),
                    NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR5U4TsicqomkNhiSkU-MkUtPoIwEpl7e8nnw&usqp=CAU'),
                    NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRkTdqKV48HM1bDj0BGazibWxWh46A3ZZ1Ikw&usqp=CAU')
                  ],
                  dotSize: 6.0,
                  dotSpacing: 15.0,
                  dotColor: AppColors.white,
                  indicatorBgPadding: 5.0,
                  dotBgColor: AppColors.white.withOpacity(0.1),
                  borderRadius: true,
                )),
          ),
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Card(
            child: Center(
              child: Text(
                'Man Power from Nepal',
                style: AppTheme.blacktext,
              ),
            ),
          ),
        )
      ],
    );
  }
}
