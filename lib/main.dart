import 'package:flutter/material.dart';
import 'back office/pending_service.dart';
import 'create new service/back_office_work.dart';
import 'create new service/create_service_full_details.dart';
import 'create new service/customer_details.dart';
import 'create new service/product_details.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'service list/amc_schedule.dart';
import 'services.dart';
import 'services_list.dart';
import 'signup_page.dart';
import 'splash_screen.dart';
import 'test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
   SplashScreen.tag: (context) => SplashScreen(),
    
    Test.tag: (context) => Test(),
    LoginPage.tag: (context) => LoginPage(),

    SignUpPage.tag: (context) => SignUpPage(),
    HomePage.tag: (context) => HomePage(),
    Services.tag: (context) => Services(),

    CostomerDetails.tag: (context) => CostomerDetails(),
    ProductDetails.tag: (context) => ProductDetails(),
    BackOfficeWork.tag: (context) => BackOfficeWork(),
    PendingService.tag: (context) => PendingService(),

    CreateServiceFullDetails.tag: (context) => CreateServiceFullDetails(),

    ServicesList.tag: (context) => ServicesList(),
    AmcSchedule.tag: (context) => AmcSchedule(),

    //       routes: <String,WidgetBuilder>{
    //   '/AdminPage': (BuildContext context)=> new AdminPage(username: username,),
    //   '/MemberPage': (BuildContext context)=> new MemberPage(username: username,),
    //   '/MyHomePage': (BuildContext context)=> new MyHomePage(),
    // },
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: Test(),
      routes: routes,
    );
  }
}
