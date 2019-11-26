import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sns_app/home_page.dart';
import 'package:sns_app/login_page.dart';
import 'package:sns_app/services.dart';

class SignUpPage extends StatefulWidget {
  static String tag = 'SignUp-page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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

    final email = Container(
      margin: EdgeInsets.only(top: 50),
      child: Center(
        child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Enter a Email',
              hintText: 'Email',
              icon: Icon(
                Icons.person,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: Colors.blue[200],
        ),
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final confirmPassword = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: Colors.blue[200],
        ),
        hintText: 'Confirm Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final signupButton = Container(
      margin: EdgeInsets.only(top: 20),
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(

            // borderRadius: BorderRadius.circular(24),
            ),
        onPressed: () {
                            Navigator.of(context).pushNamed(Services.tag);
        },
        // padding: EdgeInsets.all(12),
        color: Colors.lightBlue[200],
        child: Text('Create Account', style: TextStyle(color: Colors.white)),
      ),
    );

    final loginLabel = Container(
        margin: EdgeInsets.only(top: 40),
        child: FlatButton(
          child: Text(
            'Already have an account ?',
            style: TextStyle(color: Colors.blue[500]),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(LoginPage.tag);
          },
        ));
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
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              confirmPassword,
              signupButton,
              loginLabel,
            ],
          ),
        ),
      ),
    );
  }
}
