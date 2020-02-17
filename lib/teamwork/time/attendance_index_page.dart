import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/model/user_attendance_model.dart';

class AttendanceIndex extends StatefulWidget {
  static String tag = 'attendance-index-page';

  @override
  State<StatefulWidget> createState() {
    return new AttendanceIndexState();
  }
}

class AttendanceIndexState extends State<AttendanceIndex> {
  DateTime selectedDate = DateTime.now();
  bool isExpanded = false;

  iconMode(bool val) {
    setState(() {
      isExpanded = val;
    });
  }

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    //start search by date
    final startDateEditText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "Start Date",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        Container(
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(Icons.date_range),
                hintText: "Start Date"),
            enabled: false,
            onTap: () {
              selectDate(context);
            },
          ),
        )
      ],
    );

    final endDateEditText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "End Date",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        Container(
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(Icons.date_range),
                hintText: "End Date"),
            enabled: false,
            onTap: () {
              selectDate(context);
            },
          ),
        )
      ],
    );

    final searchButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        shadowColor: Colors.orangeAccent.shade100,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(8.0),
          side: BorderSide(color: Colors.orange[500])
        ),
          minWidth: 200,
          height: 42,
          onPressed: () {
//            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.orange[500],
          child: Text('Cari', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final searchWidgets = Container(
      padding: EdgeInsets.all(15),
      child: Card(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(25),
          children: <Widget>[
            startDateEditText,
            SizedBox(
              height: 30,
            ),
            endDateEditText,
            SizedBox(
              height: 24,
            ),
            searchButton,
          ],
        ),
      ),
    );

    //end search by date

    //start displaying result
    final listView = Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Result",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                          fontSize: 18)),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: MaterialButton(
                          minWidth: 100,
                          height: 30,
                          onPressed: () {
//            Navigator.of(context).pushNamed(HomePage.tag);
                          },
                          color: Colors.green,
                          child: Text('Unduh',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: 500,
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
        child: ListView(
          children: <Widget>[searchWidgets, listView],
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
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
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
