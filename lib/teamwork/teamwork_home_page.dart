import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/teamwork/approval/approval_page.dart';
import 'package:transformore_app/teamwork/form/form_home_page.dart';
import 'package:transformore_app/teamwork/hc/hc_home_page.dart';
import 'package:transformore_app/teamwork/time/time_management_page.dart';

class TeamworkHome extends StatelessWidget {
  static String tag = 'teamwork-home-page';

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    Widget buildBackground() => new Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(150), // here the desired height
              child: AppBar(
                title: Text("Teamwork"),
                leading: new IconButton(
                  icon: new Icon(
                    FeatherIcons.command,
                    color: Colors.white,
                  ),
                ),
              )),
        );

    children.add(buildBackground());

    final formCard = Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: Card(
                color: Color(0xff4969A5),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Icon(FeatherIcons.list, color: Colors.white,),
                ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FormHome()));
            },

          ),
          Text(
            "Form",
            style: TextStyle(color: Color(0xff4969A5), fontSize: 14),
          )
        ],
      );

    final reportCard = Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: Card(
            color: Color(0xff4969A5),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Icon(FeatherIcons.fileText, color: Colors.white,),
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => null));
          },

        ),
        Text(
          "Report",
          style: TextStyle(color: Color(0xff4969A5), fontSize: 14),
        )
      ],
    );
    final rosterCard = Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: Card(
            color: Color(0xff4969A5),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Icon(FeatherIcons.checkSquare, color: Colors.white,),
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ApprovalPage()));
          },
        ),
        Text(
          "Approval",
          style: TextStyle(color: Color(0xff4969A5), fontSize: 14),
        )
      ],
    );

    final timeCard = Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: Card(
            color: Color(0xff4969A5),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Icon(FeatherIcons.clock, color: Colors.white,),
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TimeManagementPage()));
          },
        ),
        Text(
          "Time",
          style: TextStyle(color: Color(0xff4969A5), fontSize: 14),
        )
      ],
    );

    final hcCard = Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: Card(
            color: Color(0xff4969A5),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Icon(FeatherIcons.grid, color: Colors.white,),
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HCHomePage()));
          },
        ),
        Text(
          "HC",
          style: TextStyle(color: Color(0xff4969A5), fontSize: 14),
        )
      ],
    );

    final gridContainer = Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          formCard,
          reportCard,
          rosterCard,
          hcCard,
          timeCard,
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
                              color: Color(0xff4969A5),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text("Pilih menu yang akan dioperasikan",
                          style:
                              TextStyle(color: Color(0xff4969A5), fontSize: 14)),
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
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff4969A5)
        ),
        child: Stack(
          children: children,
        ),
      )
    );
  }
}
