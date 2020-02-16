import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AttendanceRevisionPage extends StatefulWidget {
  static String tag = 'attendance-revision-page';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AttendanceRevisionState();
  }
}

class AttendanceRevisionState extends State<AttendanceRevisionPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    Widget buildBackground() =>
        new Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(150), // here the desired height
              child: AppBar(
                title: Text("Attendance Revision"),
              )),
        );

    children.add(buildBackground());

    final nrpEditText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "NRP",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        Container(
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(FeatherIcons.chevronDown)),
            enabled: false,
          ),
        )
      ],
    );

    final dateFormText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "Date",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        Container(
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(Icons.date_range)),
            enabled: false,
          ),
        )
      ],
    );

    final timeInFormText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "Time In",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        Container(
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(Icons.access_time)),
            enabled: false,
          ),
        )
      ],
    );

    final timeOutFormText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "Time Out",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        Container(
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(Icons.access_time)),
            enabled: false,
          ),
        )
      ],
    );

    final reasonFormText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "Reason",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        Container(
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(FeatherIcons.chevronDown)),
            enabled: false,
          ),
        )
      ],
    );

    final remarkFormText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "Reason",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        Container(
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5)),),
          ),
        )
      ],
    );

    final submitButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        borderRadius: BorderRadius.circular(5),
        shadowColor: Colors.orangeAccent.shade100,
        child: MaterialButton(
          minWidth: 200,
          height: 42,
          onPressed: () {
//            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.orange,
          child: Text('Submit', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final widgets = Container(
      padding: EdgeInsets.all(15),
      child: Card(
        margin: EdgeInsets.fromLTRB(15, 100, 15, 15),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(25),
          children: <Widget>[
            nrpEditText,
            SizedBox(
              height: 24,
            ),
            dateFormText,
            SizedBox(
              height: 24,
            ),
            timeInFormText,
            SizedBox(
              height: 24,
            ),
            timeOutFormText,
            SizedBox(
              height: 24,
            ),
            reasonFormText,
            SizedBox(
              height: 24,
            ),
            remarkFormText,
            SizedBox(
              height: 24,
            ),
            submitButton
          ],
        ),
      ),
    );
    children.add(widgets);

    return Scaffold(
      body: Stack(
        children: children,
      ),
    );
  }
}
