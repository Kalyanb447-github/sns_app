import 'package:flutter/material.dart';

import '../service_list_model.dart';
class AmcSchedule extends StatefulWidget {
    static String tag = 'amc-schedule-page';
      // AmcSchedule({Key key, int id,String text}) : super(key: key);
  final int id;
  final String text;
        final ServiceListModel serviceListModel;
  AmcSchedule({Key key,this.serviceListModel,this.id, this.text}) : super(key: key);
  
 
    

  @override
  _AmcScheduleState createState() => _AmcScheduleState();
}

class _AmcScheduleState extends State<AmcSchedule> {
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
  TextEditingController mamaoni=new TextEditingController();

      final text = Container(
      margin: EdgeInsets.only(top: 100),
      child: Center(
        child: TextFormField(
            // controller: , 
            //  initialValue: text,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              labelText: 'AMC Schedule',
              hintText: 'write your query',
              icon: Icon(
                Icons.person,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );

     final update = Container(
      height: 50,
      
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(

            // borderRadius: BorderRadius.circular(24),
            ),
        onPressed: () {
     
                  // _login();
                
        },
        // padding: EdgeInsets.all(12),
        color: Colors.lightBlue[200],
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

  @override
  Widget build(BuildContext context) {
    //app bar 
  
return Scaffold(

   appBar: new AppBar(
                //  automaticallyImplyLeading: true,
                 centerTitle: true,
     
          title: const Text('dsngfdn',style: TextStyle(color: Colors.white),
   
        ),
        ),
  body: Text('sjbfgvdub'),
);




  }
}






