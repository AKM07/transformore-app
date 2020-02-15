import 'package:flutter/material.dart';
import 'package:transformore_app/home_page.dart';
import 'package:transformore_app/login_page.dart';
import 'package:transformore_app/teamwork/teamwork_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    TeamworkHome.tag: (context) => TeamworkHome(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transformore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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