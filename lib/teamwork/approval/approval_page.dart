import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApprovalPage extends StatefulWidget {
  static String tag = 'approval-page';

  @override
  State<StatefulWidget> createState() {
    return new ApprovalPageState();
  }
}

class ApprovalPageState extends State<ApprovalPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    Widget buildBackground() => new Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(200), // here the desired height
              child: AppBar(
                title: Text("Need To Approve"),
              )),
        );

    children.add(buildBackground());

    final searchField = Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Text(
                "Total 213 Data",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          Container(
            child: Card(
              child: TextFormField(
                autofocus: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search"),
              ),
            ),
          )
        ],
      ),
    );

    final setItemCard = Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "Budi Utomo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "Tugas Luar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "Tugas dinas ke ABP Sharing Bisnis Proses Koperasi",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "IN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "18:00",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Out",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "18:00",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new ButtonBar(
                    children: <Widget>[
                      new FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            FeatherIcons.xCircle,
                            color: Colors.red,
                          ),
                          label: Text('')),
                      new FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            FeatherIcons.check,
                            color: Colors.green,
                          ),
                          label: Text(''))
                    ],
                  )
                ],
              ),
            )
          )
        ],
      ),
    );

    final itemListView = Expanded(
      child: ListView(
        children: <Widget>[
          setItemCard,
          setItemCard,
          setItemCard,
          setItemCard,
          setItemCard
        ],
      ),
    );

    final pageWidgets = new Container(
      margin: EdgeInsets.fromLTRB(15, 150, 15, 15),
      child: Column(
        children: <Widget>[
          searchField,
          itemListView
        ],
      ),
    );
    children.add(pageWidgets);

    return Scaffold(
      body: Stack(
        children: children,
      ),
    );
  }
}
