// import 'package:flutter/material.dart';

// import 'create_service_full_details.dart';
// class BackOfficeWork extends StatefulWidget {
//         static String tag = 'back-office-work-page';

//   @override
//   _BackOfficeWorkState createState() => _BackOfficeWorkState();
// }

// class _BackOfficeWorkState extends State<BackOfficeWork> {
//  final color = const Color(0xffb74093);
//   TextEditingController user = new TextEditingController();
//   TextEditingController pass = new TextEditingController();
//   String msg = '';

// // Future<List> _login() async {
// //   final response = await http.post("http://10.0.2.2/my_store/login.php", body: {
// //     "username": user.text,
// //     "password": pass.text,
// //   });

// //   var datauser = json.decode(response.body);

// //   if(datauser.length==0){
// //     setState(() {
// //           msg="Login Fail";
// //         });
// //   }else{
// //     if(datauser[0]['level']=='admin'){
// //        Navigator.pushReplacementNamed(context, '/AdminPage');
// //     }else if(datauser[0]['level']=='member'){
// //       Navigator.pushReplacementNamed(context, '/MemberPage');
// //     }

// //     setState(() {
// //           username= datauser[0]['username'];
// //         });

// //   }

// //   return datauser;
// // }

//   @override
//   Widget build(BuildContext context) {
//     final natureOfService = Container(
//       margin: EdgeInsets.only(top: 0),
//       child: Center(
//         child: DropdownButton<String>(
//           value: 'Select the Natute of Service',
//           // value: dropdownValue,
//           onChanged: (String newValue) {
//             setState(() {
//               // dropdownValue = newValue;
//             });
//           },
//           items: <String>['AMC', 'PAID']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//       final chooseEngeneer = Container(
//       margin: EdgeInsets.only(top: 0),
//       child: Center(
//         child: DropdownButton<String>(
//           value: 'Select An Engineer',
//           // value: dropdownValue,
//           onChanged: (String newValue) {
//             setState(() {
//               // dropdownValue = newValue;
//             });
//           },
//           //get from mysql
//           items: <String>['AMC', 'PAID']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//     final serviceDate = Container(
//       margin: EdgeInsets.only(top: 0),
//       child: Center(
//         child: TextFormField(
//             controller: user,
//             keyboardType: TextInputType.datetime,
//             decoration: InputDecoration(
//               labelText: 'Service Date *',
//               hintText: 'choose a date',
//               icon: Icon(
//                 Icons.details,
//                 color: Colors.blue[400],
//               ),
//               contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//               //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//             )),
//       ),
//     );
//       final serviceStatus = Container(
//       margin: EdgeInsets.only(top: 100),
//       child: Center(
//         child: DropdownButton<String>(
//           value: 'Select service status',
//           // value: dropdownValue,
//           onChanged: (String newValue) {
//             setState(() {
//               // dropdownValue = newValue;
//             });
//           },
//           //get from mysql
//           items: <String>['pending']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         ),
//       ),
//     );
  


//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Product Details'),
//       ),
//       backgroundColor: Colors.white,
//       body: Container(
//         width: double.infinity,
//         child: Center(
//           child: ListView(
//             shrinkWrap: true,
//             padding: EdgeInsets.only(left: 24.0, right: 24.0),
//             children: <Widget>[
//               SizedBox(height: 48.0),
//               natureOfService,
//               SizedBox(height: 8.0),
//               chooseEngeneer,
//               SizedBox(height: 24.0),
//               serviceDate,
//               SizedBox(height: 24.0),
//               serviceStatus,
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.orangeAccent,
//         child: Text('next'),
//         onPressed: () {
//             Navigator.of(context).pushNamed(CreateServiceFullDetails.tag);
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class BackOfficeWork extends StatefulWidget {
   static String tag = 'back-office-work-page';
  @override
  _BackOfficeWorkState createState() => _BackOfficeWorkState();
}

class _BackOfficeWorkState extends State<BackOfficeWork> {
 final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final Map<String, MaterialColor> _dropdownValues = {'': null, 'red': Colors.red, 'green': Colors.green, 'blue': Colors.blue, 'orange': Colors.orange};

  String _name;
  String _chosenValue = '';

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(backgroundColor: color, content: new Text(message)));
  }

  void _submitForm() {
    final FormState form = _formKey.currentState;

    print('========================================');

    if (!form.validate()) {
      print('Form NOT VALID');
    } else {
      form.save();
      String message = 'Form Valid: Name: $_name; Color: $_chosenValue';
      print(message);
      showMessage(message, _dropdownValues[_chosenValue]);
    }

    print('========================================');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(''),
      ),
      body: SafeArea(
          top: false,
          bottom: false,
          child: Form(
              key: _formKey,
              autovalidate: false,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your first and last name',
                      labelText: 'Name',
                    ),
                    // inputFormatters: [LengthLimitingTextInputFormatter(30)],
                    validator: (val) => val.isEmpty ? 'A name is required' : null,
                    onSaved: (val) => _name = val,
                  ),
                  FormField<String>(
                    initialValue: _chosenValue,
                    onSaved: (val) => _chosenValue = val,
                    validator: (val) => (val == null || val.isEmpty) ? 'Please choose a color' : null,
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: Icon(Icons.color_lens),
                          labelText: 'Favorite Color',
                          errorText: state.hasError ? state.errorText : null,
                        ),
                        isEmpty: state.value == '' || state.value == null,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: state.value,
                            isDense: true,
                            onChanged: (String newValue) {
                              if (newValue == '') {
                                newValue = null;
                              }
                              state.didChange(newValue);
                            },
                            items: _dropdownValues.keys.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  Container(
                      padding: EdgeInsets.all(40.0),
                      child: RaisedButton(
                        child: Text('Submit'),
                        onPressed: _submitForm,
                      )),
                ],
              ))),
    );
  }
}