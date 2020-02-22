import 'package:flutter/material.dart';
import 'package:transformore_app/home_page.dart';
import 'package:transformore_app/login_page.dart';
import 'package:transformore_app/teamwork/approval/approval_page.dart';
import 'package:transformore_app/teamwork/attendance_revision_page.dart';
import 'package:transformore_app/teamwork/form/set_roster_page.dart';
import 'package:transformore_app/teamwork/hc/hc_home_page.dart';
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
    SetRosterPage.tag: (context) => SetRosterPage(),
    ApprovalPage.tag: (context) => ApprovalPage(),
    ApprovalPage.tag: (context) => HCHomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transformore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[700],
        fontFamily: 'Poppins'
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}