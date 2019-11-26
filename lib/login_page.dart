import 'package:flutter/material.dart';
import 'package:sns_app/services.dart';
// import 'package:sns_app/home_page.dart';
import 'package:sns_app/signup_page.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
TextEditingController user=new TextEditingController();
TextEditingController pass=new TextEditingController();
String msg='';

// Future<List> _login() async {
//   final response = await http.post("http://10.0.2.2/my_store/login.php", body: {
//     "username": user.text,
//     "password": pass.text,
//   });

//   var datauser = json.decode(response.body);

//   if(datauser.length==0){
//     setState(() {
//           msg="Login Fail";
//         });
//   }else{
//     if(datauser[0]['level']=='admin'){
//        Navigator.pushReplacementNamed(context, '/AdminPage');
//     }else if(datauser[0]['level']=='member'){
//       Navigator.pushReplacementNamed(context, '/MemberPage');
//     }

//     setState(() {
//           username= datauser[0]['username'];
//         });

//   }

//   return datauser;
// }

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
      margin: EdgeInsets.only(top: 100),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Enter An Email',
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
      // initialValue: 'sad',
      obscureText: true,
              //  controller: pass,  
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

    final loginButton = Container(
      height: 50,
      
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(

            // borderRadius: BorderRadius.circular(24),
            ),
        onPressed: () {
     
                  // _login();
                            Navigator.of(context).pushNamed(Services.tag);

                
        },
        // padding: EdgeInsets.all(12),
        color: Colors.lightBlue[200],
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final signupLabel = Container(
        margin: EdgeInsets.only(top: 40),
        child: FlatButton(
        
          child: Text(
            'new? SIGN UP NOW',
            style: TextStyle(color: Colors.blue[500]),
          ),
              onPressed: () {
          Navigator.of(context).pushNamed(SignUpPage.tag);
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
              loginButton,

          

              signupLabel,
            ],
          ),
        ),
      ),
    );
  }
}
