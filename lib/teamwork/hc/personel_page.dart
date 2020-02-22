import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonelPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PersonelPageState();
  }


}

class PersonelPageState extends State<PersonelPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    Widget buildBackground() => new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200), // here the desired height
          child: AppBar(
            title: Text("Personel"),
          )),
    );

    children.add(buildBackground());

    throw UnimplementedError();
  }

}