import 'package:flutter/material.dart';
import 'package:sns_app/service%20list/amc_schedule.dart';
import 'package:sns_app/services.dart';
import 'package:sns_app/signup_page.dart';

class ServicesList extends StatefulWidget {
  static String tag = 'services-list-page';

  @override
  _ServicesListState createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
  @override
  Widget build(BuildContext context) {
    Material myItems(int id, String text) => Material(
          child: Container(
            alignment: Alignment.center,
            height: 50,

            child: ListTile(
              leading: CircleAvatar(child: Text('${id}'),),
              dense: true,
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                switch (id) {
                  case 1:
                    {
                      AmcSchedule(id: id,text: text);
                      // Navigator.of(context).pushNamed(AmcSchedule(id:));

                       break;
                    }
                   
                    case 1:
                    {
                      Navigator.of(context).pushNamed(AmcSchedule.tag);
                       break;
                    }
                    
                }
              },
              title: new Text(text,
                  style: new TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                    color: Colors.blueGrey[800],
                  )),
            ),
          ),
        );
    return Scaffold(
        appBar: new AppBar(
                //  automaticallyImplyLeading: true,
     
           title: const Text('List Of Service Type',style: TextStyle(color: Colors.white),
   
        ),
        ),
        body: ListView(children: <Widget>[
          myItems(1, 'AMC Schedule'),
          myItems(2, 'No Display or No Power Problem'),
          myItems(3, 'Blue Screen/OS Problem'),
          myItems(4, 'Key/Mouse/Monitor Problem'),
          myItems(5, 'Printer/Scanner Problem'),
          myItems(6, 'Lan/Wifi/Internet Problem'),
          myItems(7, 'DVD Writer/USB Drive Problem'),
          myItems(8, 'UPS/Inverter/CVT Problem'),
          myItems(9, 'Software (Tally/Busy) or Application'),
          myItems(10, 'System Hinging/Slow running/Rest'),
          myItems(11, 'CCTv Camera Problem'),
          myItems(12, 'Biometric Problem'),
          myItems(13, 'EPABX/Intercom Problem'),
          myItems(14, 'Toner/Cartridge Refilling Problem'),
          myItems(15, 'Renewal Antivirus Problem'),
          myItems(16, 'Renewal Tally Etc. Problem'),
        ]
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
    );
  }



  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('5. Printer/Scanner Problem',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),

  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('6. Lan/Wifi/Internet Problem',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),

  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('7. DVD Writer/USB Drive Problem',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),

  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('8. UPS/Inverter/CVT Problem',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),

  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('9. Software (Tally/Busy) or Application',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),
  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('10. System Hinging/Slow running/Rest',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),
  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('11. CCTv Camera Problem',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),
  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('12. Biometric Problem',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),
  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('13. EPABX/Intercom Problem',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),
  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('14. Toner/Cartridge Refilling Problem',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),
  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('15. Renewal Antivirus Problem ',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),
  //    new ListTile(
  //      onTap: (){

  //      },
  //     title: new Text('16. Renewal Tally Etc. Problem',
  //         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  //   ),

  // ];

}

class Name {
  String firstName;
  String lastName;
  Name({this.firstName, this.lastName});
}

var names = <Name>[
  Name(firstName: 'pawan', lastName: 'bdsjhvb'),
  Name(firstName: 'pawan', lastName: 'bdsjhvb'),
  Name(firstName: 'pawan', lastName: 'bdsjhvb'),
];
