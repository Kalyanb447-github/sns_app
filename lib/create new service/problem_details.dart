import 'package:flutter/material.dart';
class ProblemDetails extends StatefulWidget {
      static String tag = 'problem-details-page';

  @override
  _ProblemDetailsState createState() => _ProblemDetailsState();
}

class _ProblemDetailsState extends State<ProblemDetails> {
  final color = const Color(0xffb74093);
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String msg = '';

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
    final productName = Container(
      margin: EdgeInsets.only(top: 100),
      child: Center(
        child: TextFormField(
            controller: user,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Product Name *',
              hintText: 'Enter Produxt Name *',
              icon: Icon(
                Icons.personal_video,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
    final productDescription = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              labelText: 'Product Description',
              hintText: 'Enter Product Description',
              icon: Icon(
                Icons.details,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
    final serialNumber = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Serial Number *',
              hintText: 'Serial Number ',
              icon: Icon(
                Icons.format_list_numbered,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );
    final problemType = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: DropdownButton<String>(
          // value:'No Diaplay or No Power',
          onChanged: (String newValue) {
            setState(() {
              // dropdownValue = newValue;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
    final problemDescription = Container(
      margin: EdgeInsets.only(top: 0),
      child: Center(
        child: TextFormField(
            controller: user,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              labelText: 'Problem Desc',
              hintText: 'Problem Desc',
              icon: Icon(
                Icons.add_location,
                color: Colors.blue[400],
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            )),
      ),
    );


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Problem Details'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              SizedBox(height: .0),
              productName,
              SizedBox(height: .0),
              productDescription,
              SizedBox(height:4.0),
              serialNumber,
                    SizedBox(height: 24.0),
              problemType,
              problemDescription
           
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.orangeAccent,
        onPressed: () {
          print('mango');
        },
        
        label: Text(
          "Next",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
