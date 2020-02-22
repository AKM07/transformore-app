import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HCHomePage extends StatelessWidget {
  static String tag = 'hc-home-page';

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    final double itemHeight = 150;
    final double itemWidth = 300;

    Widget buildBackground() => new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150), // here the desired height
          child: AppBar(
            title: Text("HC"),
            leading: new IconButton(
              icon: new Icon(
                FeatherIcons.grid,
                color: Colors.white,
              ),
            ),
          )),
    );

    children.add(buildBackground());

    final personalCard = Container(
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
                  FeatherIcons.users,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Text(
                  "Personal",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => null));
        },
      ),
    );

    final pkwtCard = Container(
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
                  FeatherIcons.repeat,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Text(
                  "PKWT",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => null));
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
          personalCard,
          pkwtCard,
        ],
      ),
    );

    final cards = Container(
      height: 500,
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
