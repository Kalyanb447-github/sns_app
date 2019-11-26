import 'package:flutter/material.dart';
import 'package:sns_app/city.dart';
import 'package:sns_app/data.dart';

class PendingService extends StatefulWidget {
  static String tag = 'pending-service';

  @override
  _PendingServiceState createState() => _PendingServiceState();
}

class _PendingServiceState extends State<PendingService> {
  @override
  Widget build(BuildContext context) {
    final String appTitle = 'Pending List';
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(appTitle,style: TextStyle(color: Colors.white),),
        
      ),
      body: DataTableWidget(),
    );
  }
}

class DataTableWidget extends StatefulWidget {
  @override
  DataTableWidgetState createState() => DataTableWidgetState();
}

class DataTableWidgetState extends State<DataTableWidget> {
  bool ascending;
  List<City> selectedCities;

  @override
  void initState() {
    super.initState();

    ascending = false;
    selectedCities = [];
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: width*3.0,
          
          
        // width: ,
        //   fit: BoxFit.fill,
        child: ListView(
        
          children: <Widget>[
       
              // margin: EdgeInsets.only(left: -2,right: -2),
           buildDataTable(),
           
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     RaisedButton(
            //       child: Text('Proccess with ${selectedCities.length} entries'),
            //       onPressed: onPressed(),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }

  Widget buildDataTable() => DataTable(
        sortAscending: ascending,
        sortColumnIndex: 0,
        columns: cityColumns
            .map(
              (String column) => DataColumn(
                    label: Text(
                      column,  overflow: TextOverflow.clip,maxLines: 1,
                      style: TextStyle(color: Colors.blue,),
                    ),
                    onSort: (int columnIndex, bool ascending) => onSortColumn(
                        columnIndex: columnIndex, ascending: ascending),
                  ),
            )
            .toList(),
        rows: cities
            .map((City city) => DataRow(
                  selected: selectedCities.contains(city),
                  cells: [
                    

                    DataCell(
                  
                   
                      Text(
                          '${city.queueNo}',overflow:TextOverflow.fade,
                        ),
                      
                    ),
                    DataCell(
                     
        
                        Text(
                          '${city.serviceNo}',
                          overflow: TextOverflow.ellipsis,
                        ),
                      
                    ),
                    DataCell(
                     
           
                        Text(
                          '${city.customerName}',
                          overflow: TextOverflow.ellipsis,
                        ),
                      
                    ),
                    DataCell(
                     
             
                         Text(
                          '${city.complaintDate}',
                          overflow: TextOverflow.ellipsis,
                        ),
                  
                    ),
                      DataCell(
                     
             
                        Text(
                          '${city.complaintTime}',
                          overflow: TextOverflow.ellipsis,
                        ),
                      
                    ),
                      DataCell(
                     
             
                        Text(
                          '${city.product}',
                          overflow: TextOverflow.ellipsis,
                        ),
                    
                    ),
                      DataCell(
                     
             
                     Text(
                          '${city.problem}',
                          overflow: TextOverflow.ellipsis,
                        ),
                   
                    ),
                    // DataCell(Text('${city.nation}')),
                    // DataCell(Text('${city.population}')),
                    //  DataCell(Text('${city.name}')),
                  ],
                  // onSelectChanged: (bool selected) =>
                  //     onSelectedRowChanged(selected: selected, city: city),
                ))
            .toList(),
      );

  void onSortColumn({int columnIndex, bool ascending}) {
    if (columnIndex == 0) {
      setState(() {
        if (ascending) {
          cities.sort((a, b) => a.queueNo.compareTo(b.queueNo));
        } else {
          cities.sort((a, b) => b.queueNo.compareTo(a.queueNo));
        }
        this.ascending = ascending;
      });
    }
  }

  void onSelectedRowChanged({bool selected, City city}) {
    setState(() {
      if (selected) {
        selectedCities.add(city);
      } else {
        selectedCities.remove(city);
      }
    });
  }

  Function onPressed() {
    if (selectedCities.isEmpty) return null;

    return () {};
  }
}
