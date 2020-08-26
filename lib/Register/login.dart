import 'package:flutter/material.dart';
import 'package:manpower/Register/signup.dart';
import 'package:manpower/appsettings/theme.dart';

class LoginPpage extends StatefulWidget {
  @override
  _LoginPpageState createState() => _LoginPpageState();
}

class _LoginPpageState extends State<LoginPpage> {
  // @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIOverlays([]);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [AppColors.appbar, AppColors.appbar1]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.person,
                        size: 70,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Padding(
                            padding: const EdgeInsets.only(left: 40, right: 0, bottom: 0),
                            child: new Container(
                              height: 2,
                              width: 100,
                              color: Colors.white
                                ),
                          ),
                      
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 0, bottom: 0),
                            child: Text(
                              'LOGIN',
                              style: AppTheme.body2_white,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 40, left: 0, bottom: 0),
                            child: new Container(
                              height: 2,
                              width: 100,
                              color: Colors.white
                                ),
                          ),
                      
                      ],
                    ),
                                        Spacer(),

                    Padding(
                      padding: const EdgeInsets.only(bottom:40),
                      child: Text("Login to your manpowerlink account", 
                      style: AppTheme.body2_white,
                      ),
                    )
                  ],
                ),
                // color: AppColors.appbar1,
              ),
              //  Spacer(),
              SizedBox(height: 80),

              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 12,
                child: TextFormField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: AppTheme.txtbox,
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 0, right: 10),
                        child: const Icon(Icons.mail_outline,
                            color: Colors.red, size: 20.0),
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    )),
              ),
              SizedBox(height: 10),

              Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 12,
                  child: TextFormField(
                    obscureText: true,
                    autocorrect: true,
                    decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: AppTheme.txtbox,
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 0, right: 10),
                        child: const Icon(Icons.lock_outline,
                            color: Colors.red, size: 20.0),
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        'forgot password?',
                        style: TextStyle(
                          color: AppColors.appbar1,
                          fontSize: 14.0,
                          // fontFamily: AppTheme.fontName,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 14,
                child: RaisedButton(
                    child: Center(
                        child: Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: AppTheme.body2_white,
                    )),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: AppColors.appbar1,
                    onPressed: () {}),
              ),
              SizedBox(height: 10),

              Text(
                'Not a member yet ? click below to register',
                style: AppTheme.txtbox,
              ),
              SizedBox(height: 10),

              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 14,
                child: OutlineButton(
                    borderSide: BorderSide(color: AppColors.appbar1),
                    child: Center(
                        child: Text(
                      'REGISTER',
                      textAlign: TextAlign.center,
                      style: AppTheme.blacktext,
                    )),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SignUpPage()));
                    }),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
