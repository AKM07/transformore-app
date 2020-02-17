import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/teamwork/form/form_home_page.dart';
import 'package:transformore_app/teamwork/time/time_management_page.dart';

class TeamworkHome extends StatelessWidget {
  static String tag = 'teamwork-home-page';

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    Widget buildBackground() => new Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(150.0), // here the desired height
              child: AppBar(
                title: Text("Teamwork", style: TextStyle(fontFamily: 'Poppins'),),
              )),
        );

    children.add(buildBackground());

    final formCard = Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              FeatherIcons.list,
              color: Colors.indigo,
            ),
            title: Text(
              'Form',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.indigo),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FormHome()));
            },
          )
        ],
      ),
    );

    final reportCard = Card(
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
              'Report',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.indigo),
          )
        ],
      ),
    );

    final rosterCard = Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(
              FeatherIcons.checkSquare,
              color: Colors.indigo,
            ),
            title: Text(
              'Approval',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.indigo),
          )
        ],
      ),
    );

    final timeCard = Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              FeatherIcons.clock,
              color: Colors.indigo,
            ),
            title: Text(
              'Time Management',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.indigo),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TimeManagementPage()));
            },
          )
        ],
      ),
    );

    final hcCard = Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(
              FeatherIcons.grid,
              color: Colors.indigo,
            ),
            title: Text(
              'Report',
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
              formCard,
              reportCard,
              rosterCard,
              timeCard,
              hcCard,
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
