import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/teamwork/attendance_revision_page.dart';

class FormHome extends StatelessWidget {
  static String tag = 'form-home-page';
  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    Widget buildBackground() => new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0), // here the desired height
          child: AppBar(
            title: Text("Form"),
          )),
    );

    children.add(buildBackground());

    final uploadCard = Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(
              FeatherIcons.fileText,
              color: Colors.indigo,
            ),
            title: Text(
              'Upload Roster',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.indigo),
          )
        ],
      ),
    );

    final updateCard = Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(
              FeatherIcons.externalLink,
              color: Colors.indigo,
            ),
            title: Text(
              'Update Roster',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.indigo),
          )
        ],
      ),
    );

    final setRosterCard = Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(
              FeatherIcons.userCheck,
              color: Colors.indigo,
            ),
            title: Text(
              'Set Roster',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.indigo),
          )
        ],
      ),
    );

    final attendanceCard = Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              FeatherIcons.edit,
              color: Colors.indigo,
            ),
            title: Text(
              'Attendance Revision',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.indigo),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AttendanceRevisionPage()));
            },
          )
        ],
      ),
    );

    final leaveCard = Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(
              FeatherIcons.file,
              color: Colors.indigo,
            ),
            title: Text(
              'Leave Application',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.indigo),
          )
        ],
      ),
    );



    final cards = Container(
      margin: EdgeInsets.fromLTRB(15, 100, 15, 0),
      child: Card(
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Choose Menu",
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
              ),
              uploadCard,
              updateCard,
              setRosterCard,
              attendanceCard,
              leaveCard,
            ],
          ),
        ),
      ),
    );
    children.add(cards);

    return Scaffold(
      body: Stack(
        children: children,
      ),
    );
  }

}