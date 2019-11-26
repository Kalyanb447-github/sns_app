import 'package:flutter/material.dart';

class NewCustomer extends StatefulWidget {
    static String tag = 'new-service-page';
  @override
  _NewCustomerState createState() => _NewCustomerState();
}

class _NewCustomerState extends State<NewCustomer> {
   final color = const Color(0xffb74093);
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

  @override
  Widget build(BuildContext context) {
      final name = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Customer / Company Name *',
              hintText: 'Enter Customer / Company Name *',
              icon: Icon(
                Icons.person,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
      final contactPerson = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Contact Person*',
              hintText: 'Enter Contact Person here',
              icon: Icon(
                Icons.person,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
        final address1 = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'ADD-1*',
              hintText: 'ADD-1',
              icon: Icon(
                Icons.add_location,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
     final address2 = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'ADD-2',
              hintText: 'ADD-1',
              icon: Icon(
             Icons.add_location,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
        final city = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'City*',
              hintText: 'City',
              icon: Icon(
             Icons.add_location,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
       final district = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'District*',
              hintText: 'District',
              icon: Icon(
             Icons.directions_transit,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
     final state = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'State*',
              hintText: 'State',
              icon: Icon(
             Icons.location_city,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
  
         final zip = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'State*',
              hintText: 'State',
              icon: Icon(
             Icons.pin_drop,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
       final mobile = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Mobile*',
              hintText: 'Mobile',
              icon: Icon(
             Icons.mobile_screen_share,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
     final email = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user, 
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email*',
              hintText: 'Email',
              icon: Icon(
             Icons.email,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
    

    final submit = Container(
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


 return Scaffold(
   appBar: AppBar(
     centerTitle: true,
     title: Text('New Customer'),
   ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
               name,
              contactPerson,
              address1,
      
              address2,
    
              city,
             
              district,
             
              state,
              
              zip,
              
              mobile,
              
              email,
          

        
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        child: Text('next'),
        onPressed: (){

        },
      ),
    );
  }
}
