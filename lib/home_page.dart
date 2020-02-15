import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/teamwork/teamwork_home_page.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget createDrawerHeader() {
      return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: Stack(
          children: <Widget>[
            Hero(
              tag: "hero",
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 48,
                child: Image.asset('assets/images/user_icon.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Positioned(
              bottom: 12,
              left: 16,
              child: Text(
                'User Fullname',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      );
    }

    final homeText = Center(
      child: Text(
        'Home',
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );

    final drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.dashboard),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Dashboard"),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, "");
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.report),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Teamwork"),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TeamworkHome()));
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.report),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Safety & Environment"),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, "");
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.report),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Operation"),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, "");
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.report),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Transaction"),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, "");
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.report),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("QMM"),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, "");
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.report),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("System"),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, "");
            },
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Transformore'),
      ),
      body: homeText,
      drawer: drawer,
    );
  }
}
