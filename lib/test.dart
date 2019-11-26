import 'package:flutter/material.dart';
import 'package:sns_app/city.dart';
import 'package:sns_app/data.dart';
import 'dart:convert';



// class Test extends StatefulWidget {

//   static String tag = 'services-page';
//   @override
//   _TestState createState() => _TestState();
// }

// class _TestState extends State<Test>with SingleTickerProviderStateMixin {
//   AnimationController _controller;
//   Animation<Color> colorTween;
//   Animation<double> animation;
//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(duration: Duration(seconds: 3), vsync: this);
//     animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
//     colorTween =
//         ColorTween(begin: Colors.pink, end: Colors.green).animate(_controller);
//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   void CallAnimation() {
//     if (_controller.status == AnimationStatus.completed) {
//       _controller.reverse();
//     } else {
//       _controller.reset();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           RotationTransition(
//             turns: animation,
//             child: FadeTransition(
//               opacity: animation,
//               child:Text(
//               'Anand',
//               style: TextStyle(fontSize: 100.0, color: Colors.green),
//             ),
//           ),),
//           // ChanegColor(
//           //   animation: colorTween,
//           // ),
//         ],
//       )),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.refresh),
//         onPressed: CallAnimation,
//       ),
//     );
//   }
// }



// class Test extends StatefulWidget {

//   static String tag = 'services-page';
//   @override
//   _TestState createState() => _TestState();
// }

// class _TestState extends State<Test>with SingleTickerProviderStateMixin {
//   List data;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Load json text'),
//       ),
//       body: Container(
//         child: Center(
//           child: FutureBuilder(
//             future: DefaultAssetBundle.of(context).loadString('load_json/person.json'),
//             builder: (context, snapshot){
//               var mydata= jsonDecode(snapshot.data.toString());
//               //  var mydata= json.decode(snapshot.data.toString());
//               return ListView.builder(
//                 itemBuilder: (BuildContext context,int index){
//                    return Card(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: <Widget>[
//                           Text("Name: "+mydata[index]['name']),
                                      
//                           Text("age: "+mydata[index]['age']),

//                           Text("height: "+mydata[index]['height']),

//                           Text("hair color: "+mydata[index]['hair_color']),
//                           Text("gender: "+mydata[index]['gender']),

//                         ],
//                       ),
//                    );
//                 },
//                   itemCount: mydata == null ? 0:mydata.length,
//               );
//             },
//           ),
//         ),
//       )
//     ); 
//   }
// }



class Test extends StatefulWidget {

  static String tag = 'services-page';
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test>with SingleTickerProviderStateMixin {
  List data;
final String url="http://swapi.co/api/people";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Load json text'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context,int index){
        return Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                       Card(
                         child: Container(
                           child: Text('hello'),
                           padding: EdgeInsets.all(20.0),
                         ),
                       )
                ],
              ),
            ),
        );
        },
      )
    ); 
  }
}
