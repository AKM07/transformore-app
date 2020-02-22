import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/teamwork/teamwork_home_page.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int tabIndex = 0;

  void onNavBarTapped(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    Widget buildBackground() =>
        new Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(150), // here the desired height
              child: AppBar(title: Text("Home"),
                leading: new IconButton(
                  icon: new Icon(FeatherIcons.home, color: Colors.white,),
                ),
              )),
        );

    children.add(buildBackground());

    final image = Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.all(10),
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.cover,
                image: new NetworkImage("https://i.imgur.com/IvUfbg4.jpg"))));

    final textContainer = Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Text(
                "Selamat Datang",
                style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Text(
                "User Fullname",
                style: TextStyle(color: Colors.blue[700], fontSize: 14),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Text(
                "NIP 1234567",
                style: TextStyle(color: Colors.blue[700], fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );

    final cardContainer = Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        image,
        textContainer
      ],
    );

    final widget = Container(
      height: 300,
      padding: EdgeInsets.all(15),
      child: Card(
          margin: EdgeInsets.fromLTRB(15, 100, 15, 15),
          child: cardContainer
      ),
    );
    children.add(widget);
    final stack = Stack(
      children: children,
    );


    final pages = <Widget>[stack, TeamworkHome(), stack, stack];

    final bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(FeatherIcons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(FeatherIcons.command),
        title: Text('Teamwork'),
      ),
      BottomNavigationBarItem(
        icon: Icon(FeatherIcons.codepen),
        title: Text('Safety & Environment'),
      ),
      BottomNavigationBarItem(
        icon: Icon(FeatherIcons.moreHorizontal),
        title: Text('Lainnya'),
      ),
    ];

    final bottomNavBar = BottomNavigationBar(
      items: bottomNavBarItems,
      currentIndex: tabIndex,
      selectedItemColor: Colors.blue[700],
      unselectedItemColor: Colors.grey,
      onTap: onNavBarTapped,
    );

    return Scaffold(
      body: Center(
        child: pages[tabIndex],
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
