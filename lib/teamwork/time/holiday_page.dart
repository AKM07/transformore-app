import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/model/user_attendance_model.dart';

class HolidayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HolidayState();
  }
}

class HolidayState extends State<HolidayPage> {
  @override
  Widget build(BuildContext context) {
    bool isExpanded = false;

    iconMode(bool val) {
      setState(() {
        isExpanded = val;
      });
    }

    final searchField = Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Text(
                "Total 213 Data",
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          Container(
            child: TextFormField(
              autofocus: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search"),
            ),
          )
        ],
      ),
    );

    final listView = Container(
      padding: EdgeInsets.all(15),
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 5),
              child: Row(
                children: <Widget>[
                  Text("Result",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                          fontSize: 18)),
                ],
              ),
            ),
            Container(
              height: 500,
              padding: EdgeInsets.all(15),
              child: ListView.builder(
                itemCount: attendanceList.length,
                itemBuilder: (context, i) {
                  return new ExpansionTile(
                    leading: Icon(
                      isExpanded
                          ? Icons.indeterminate_check_box
                          : Icons.add_box,
                      color: Colors.black,
                    ),
                    onExpansionChanged: iconMode,
                    title: new Text(attendanceList[i].date,
                        style: new TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    children: <Widget>[
                      new Column(
                        children: buildExpandableContent(attendanceList[i]),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );

    return new Container(
      child: new Center(
        child: Column(
          children: <Widget>[
            searchField,
            SizedBox(
              height: 20,
            ),
            listView
          ],
        ),
      ),
    );
  }

  buildExpandableContent(UserAttendance attendance) {
    List<Widget> columnContent = [];
    columnContent.add(
      new Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Text(
                "Description",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          Text(attendance.description, style: new TextStyle(fontSize: 14.0)),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: MaterialButton(
                      minWidth: 100,
                      height: 30,
                      onPressed: () {
//            Navigator.of(context).pushNamed(HomePage.tag);
                      },
                      color: Colors.indigo,
                      child: Text('Edit', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 100,
                    height: 30,
                    onPressed: () {
//            Navigator.of(context).pushNamed(HomePage.tag);
                    },
                    color: Colors.indigo,
                    child: Text('Delete', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );

    return columnContent;
  }

  List<UserAttendance> attendanceList = [
    new UserAttendance(
      '27 Januari 2019',
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
    new UserAttendance(
      '24 Januari 2019',
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
    new UserAttendance(
      '25 Januari 2019',
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
  ];
}
