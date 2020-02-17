import 'package:feather_icons_flutter/feather_icons_flutter.dart';
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
        decoration: BoxDecoration(color: Colors.blue),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
             child: Hero(
               tag: "hero",
               child: CircleAvatar(
                 backgroundColor: Colors.white,
                 radius: 48,
                 child: Image.asset('assets/images/user.png'),
               ),
             ),
            )
            ,
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
                Icon(Icons.dashboard, color: Colors.indigo),
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
                Icon(FeatherIcons.command, color: Colors.indigo,),
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
                Icon(FeatherIcons.codepen, color: Colors.indigo),
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
                Icon(FeatherIcons.sliders, color: Colors.indigo),
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
                Icon(FeatherIcons.repeat, color: Colors.indigo),
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
                Icon(FeatherIcons.trendingUp, color: Colors.indigo),
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
                Icon(FeatherIcons.settings, color: Colors.indigo),
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
