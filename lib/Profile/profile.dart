import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:manpower/appsettings/theme.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
    bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: AppColors.appbar,
            title: Text(
              'Profile Details',
              style: AppTheme.body2_white,
            )),
        body: SingleChildScrollView(
          child: Wrap(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.appbar,
                                    AppColors.appbar1
                                  ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    color: AppColors.appbar),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CachedNetworkImage(
                                    height: 80,
                                    width: 80,
                                    imageUrl:
                                        'https://cdn18.picsart.com/80592877450.jpeg?type=webp&to=min&r=640',
                                    placeholder: (context, url) =>
                                        const CircleAvatar(
                                      backgroundColor: Colors.amber,
                                      radius: 30,
                                    ),
                                    imageBuilder: (context, image) =>
                                        CircleAvatar(
                                      backgroundImage: image,
                                      radius: 30,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Gopal Miringching",
                                style: AppTheme.body2_white,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            right: 16,
                            left: 16,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "House Keeping",
                                        style: AppTheme.blacktext,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "Delhi Public Hotel",
                                        style: TextStyle(
                                          // body2 -> body1
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          letterSpacing: -0.05,
                                          color: AppColors.neon,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        Card(
                          color: Colors.grey[200],
                          child: ExpansionTile( 
                             
                            leading: Icon(Icons.cloud_off, color: AppColors.appbar),
                            title: Text(
                              "Professional Summary",
                              style: AppTheme.blacktitle2,
                            ),
                            children: [
                              ListTile(
                                title: Text('data'),
                              ),
                              ListTile(
                                title: Text('data'),
                              )
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.grey[200],
                          child: ExpansionTile(
                            leading: Icon(Icons.work, color: AppColors.appbar,),
                            title: Text(
                              "Experience",
                              style: AppTheme.blacktitle2,
                            ),
                            children: [
                              ListTile(
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('House keeping'),
                                    Text('Delhi Public Hotel'),
                                    Text('India'),
                                    Text('2010-2-10 to 2010-8-19'),
                                  ],
                                ),
                              ),
                              // ListTile(
                              //   title: Text('Delhi Public Hotel'),
                              // ),
                              // ListTile(
                              //   title: Text('India'),
                              // ),
                              // ListTile(
                              //   title: Text('2010-2-10 to 2010-8-19'),
                              // )
                            ],
                          ),
                          
                        ),
                        Card(
                          color: Colors.grey[200],
                          child: ExpansionTile(
                            leading: Icon(Icons.school, color: AppColors.appbar),
                            title: Text(
                              "Education",
                              style: AppTheme.blacktitle2,
                            ),
                            children: [
                              ListTile(
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('10th pass(SLC), Delhi Public School'),
                                    Text('major: General'),
                                    Text('Competition year: 2004')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.grey[200],
                          child: ExpansionTile(
                            leading: Icon(Icons.book, color: AppColors.appbar),
                            title: Text(
                              "Other Details",
                              style: AppTheme.blacktitle2,
                            ),
                            children: [
                              ListTile(
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Skills: Child Care, cleaning, baby sitting'),
                                    Text('mobile: 9864115161'),
                                    Text('Date of birth: 1993/02/10'),
                                    Text('Nationality: Nepali')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                            child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey[200],
                          child: Row(
                            children: [
                              SizedBox(width: 15),
                              Icon(
                                Icons.arrow_downward,color: AppColors.appbar
                              ),
                              SizedBox(width: 20),
                              Text('Download Resume')
                            ],
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
