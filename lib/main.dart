import 'package:flutter/material.dart';
import 'package:transformore_app/home_page.dart';
import 'package:transformore_app/login_page.dart';
import 'package:transformore_app/teamwork/attendance_revision_page.dart';
import 'package:transformore_app/teamwork/teamwork_home_page.dart';
import 'package:transformore_app/teamwork/time/time_management_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    TeamworkHome.tag: (context) => TeamworkHome(),
    TimeManagementPage.tag: (context) => TimeManagementPage(),
    AttendanceRevisionPage.tag: (context) => AttendanceRevisionPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transformore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }

//  @override
//  void dispose(){
//    controller.dispose();
//    super.dispose();
//  }
}