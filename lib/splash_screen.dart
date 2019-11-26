import 'dart:async';

import 'package:flutter/material.dart';

import 'package:sns_app/login_page.dart';

class SplashScreen extends StatefulWidget {
  static String tag = 'splash-screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed(LoginPage.tag);
    });
    // Timer(Duration(seconds: 5), () =>       Navigator.of(context).pushNamed(LoginPage());
// );
  }

  final color = const Color(0xffb74093);
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/snslogo.png'),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              Dialog(
                child: new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    
                    Text("Loading...",style: TextStyle(fontSize: 16),),
                    //  CircularProgressIndicator(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
