import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/teamwork/attendance_revision_page.dart';
import 'package:transformore_app/teamwork/form/set_roster_page.dart';

class FormHome extends StatelessWidget {
  static String tag = 'form-home-page';

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    final double itemHeight = 150;
    final double itemWidth = 300;

    Widget buildBackground() => new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150), // here the desired height
          child: AppBar(
            title: Text("Form"),
          )),
    );

    children.add(buildBackground());

    final updateCard = Container(
      height: 300,
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        child: Card(
          color: Colors.blue[700],
          elevation: 3,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Icon(
                  FeatherIcons.externalLink,
                  color: Colors.white,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Update",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Roster",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SetRosterPage()));
        },
      ),
    );

    final setRosterCard = Container(
      height: 300,
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        child: Card(
          color: Colors.blue[700],
          elevation: 3,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Icon(
                  FeatherIcons.userCheck,
                  color: Colors.white,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Set",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Roster",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SetRosterPage()));
        },
      ),
    );

    final attendanceCard = Container(
      height: 300,
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        child: Card(
          color: Colors.blue[700],
          elevation: 3,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Icon(
                  FeatherIcons.edit,
                  color: Colors.white,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Attendance",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Revision",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AttendanceRevisionPage()));
        },
      ),
    );

    final leaveCard = Container(
      height: 300,
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        child: Card(
          color: Colors.blue[700],
          elevation: 3,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Icon(
                  FeatherIcons.file,
                  color: Colors.white,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Leave",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Application",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AttendanceRevisionPage()));
        },
      ),
    );

    final gridContainer = Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (itemWidth / itemHeight),
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          updateCard,
          setRosterCard,
          attendanceCard,
          leaveCard,
        ],
      ),
    );

    final cards = Container(
      height: 300,
      margin: EdgeInsets.fromLTRB(15, 100, 15, 0),
      child: Card(
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Pilih Menu",
                          style: TextStyle(
                              color: Colors.blue[700],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text("Pilih menu yang akan dioperasikan",
                          style:
                          TextStyle(color: Colors.blue[700], fontSize: 14)),
                      gridContainer
                    ],
                  )),
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
