import 'package:flutter/material.dart';
import 'package:sns_app/services.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final drawer = Drawer(elevation: 0,
      child: ListView(
        // Important: Remove any padding from the ListView.

        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            color: Colors.red,
            height: 200,
            child: RaisedButton(           
               color: Colors.red,
              child: Text("Services",style: TextStyle(fontSize: 50,color: Colors.white),),
              onPressed: () {
                Navigator.of(context).pushNamed(Services.tag);
              },
            ),
          ),
            Container(
            margin: EdgeInsets.only(top: 100),
            color: Colors.red,
            height: 200,
            child: RaisedButton(           
               color: Colors.red,
              child: Text("Services LIst",style: TextStyle(fontSize: 50,color: Colors.white),),
              onPressed: () {
                // Navigator.of(context).pushNamed(HomePage.tag);
              },
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      drawer: drawer,
      appBar: new AppBar(
        title: new Text("Drawer Demo"),
      ),
    );
  }
}
