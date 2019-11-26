import 'package:flutter/material.dart';
import 'package:sns_app/back%20office/pending_service.dart';

import 'package:sns_app/services_list.dart';

import 'create new service/customer_details.dart';


class Services extends StatefulWidget {
  static String tag = 'services-page';
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    final backOffice = Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(2),
      height: 30,
      //   decoration: new BoxDecoration(
      //   border: new Border.all()
      // ),
      child: Text(
        "Back Office",
        style: TextStyle(
          color: Colors.blueGrey[500],
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ),
    );


    final pendingService = Container(
      margin: EdgeInsets.all(20),
      height: 140,
      width: 140,
      child: RaisedButton(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
          Navigator.of(context).pushNamed(PendingService.tag);
              // Navigator.of(context).pushNamed(PendingService.tag);
print('ksdfhiujh');
          },
          padding: EdgeInsets.all(12),
          // color: Colors.orange[400],
          color: Color(0xffF0F0F0),
          child: ListView(
            children: <Widget>[
              Icon(Icons.people,size: 50,),
              Text(
                'Pending Service',textAlign: TextAlign.center,
                style: TextStyle(

                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );
    final toBeVisited = Container(
      margin: EdgeInsets.all(20),
      height: 140,
      width: 140,
      child: RaisedButton(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            // _login();
          },
          padding: EdgeInsets.all(12),
          // color: Colors.orange[400],
          color: Color(0xffF0F0F0),
          child: ListView(
            children: <Widget>[
              Icon(Icons.remove_red_eye,size: 50,),
              Text(
                'To Be Visited',
                textAlign: TextAlign.center,
                style: TextStyle(
                
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );
     final conpleted = Container(
      margin: EdgeInsets.all(20),
      height: 140,
      width: 140,
      child: RaisedButton(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            // _login();
          },
          padding: EdgeInsets.all(12),
          // color: Colors.orange[400],
          color: Color(0xffF0F0F0),
          child: ListView(
            children: <Widget>[
              Icon(Icons.done_all,size: 50,),
              Text(
                'Completed',
                textAlign: TextAlign.center,
                style: TextStyle(
                
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );
     final cancelServices = Container(
      margin: EdgeInsets.all(20),
      height: 140,
      width: 140,
      child: RaisedButton(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            // _login();
          },
          padding: EdgeInsets.all(12),
          // color: Colors.orange[400],
          color: Color(0xffF0F0F0),
          child: ListView(
            children: <Widget>[
              Icon(Icons.cancel,size: 50,),
              Text(
                'Cenceled Services',
                textAlign: TextAlign.center,
                style: TextStyle(
                
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );
        final engeneerDesk = Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(2),
      height: 30,
      //   decoration: new BoxDecoration(
      //   border: new Border.all()
      // ),
      child: Text(
        "Engineer Desk",
        style: TextStyle(
          color: Colors.blueGrey[500],
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ),
    );

      final delay= Container(
      margin: EdgeInsets.all(20),
      height: 140,
      width: 140,
      child: RaisedButton(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            // _login();
          },
          padding: EdgeInsets.all(12),
          // color: Colors.orange[400],
          color: Color(0xffF0F0F0),
          child: ListView(
            children: <Widget>[
              Icon(Icons.av_timer,size: 50,),
              Text(
                'Delay',
                textAlign: TextAlign.center,
                style: TextStyle(
                
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );
       final pendingParts= Container(
      margin: EdgeInsets.all(20),
      height: 140,
      width: 140,
      child: RaisedButton(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            // _login();
          },
          padding: EdgeInsets.all(12),
          // color: Colors.orange[400],
          color: Color(0xffF0F0F0),
          child: ListView(
            children: <Widget>[
              Icon(Icons.access_time,size: 50,),
              Text(
                'Pending Parts',
                textAlign: TextAlign.center,
                style: TextStyle(
                
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );

    final conpleted2= Container(
      margin: EdgeInsets.all(20),
      height: 140,
      width: 140,
      child: RaisedButton(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            // _login();
          },
          padding: EdgeInsets.all(12),
          // color: Colors.orange[400],
          color: Color(0xffF0F0F0),
          child: ListView(
            children: <Widget>[
              Icon(Icons.done,size: 50,),
              Text(
                'Completed',
                textAlign: TextAlign.center,
                style: TextStyle(
                
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Service Panel',
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
      drawer: Drawer(child: ListView(
        children: <Widget>[
           UserAccountsDrawerHeader(
              accountName: Text('Kalyan Biswas',style: TextStyle(fontSize: 40,color: Colors.white)),
              accountEmail: Text('user@usuario.com',style: TextStyle(fontSize: 20,color: Colors.white)),
            ),
                 Column(
              children: <Widget>[
                ListTile(
                  leading: new Icon(Icons.person),
                                    trailing: Icon(Icons.arrow_forward),

                  title: Text('Services',style: TextStyle(fontSize: 20),),
                  onTap: () {
                    Navigator.of(context).pushNamed(Services.tag);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.home),
                  trailing: Icon(Icons.arrow_forward),
                  title: Text('Services List',style: TextStyle(fontSize: 20)),
                  onTap: () {
               Navigator.of(context).pushNamed(ServicesList.tag);
                  },
                ),
              ],
            ),
        ],
      ),
      
      ),
      body: ListView(
        children: <Widget>[
          backOffice,
          Row(
            children: <Widget>[
              pendingService,
              toBeVisited
            ],
          ),
            Row(
            children: <Widget>[
              conpleted,
              cancelServices
            ],
          ),
           engeneerDesk,
               Row(
            children: <Widget>[
              delay,
              pendingParts
            ],
          ),
            Row(
            children: <Widget>[
              conpleted2,
           
            ],
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "new Service",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orangeAccent,
        onPressed: () {
                Navigator.of(context).pushNamed(CostomerDetails.tag);
       

        },
      ),
    );
  }

  createNewService(int i, String s, IconData ac_unit) {}
}
