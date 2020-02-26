import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/teamwork/time/holiday_page.dart' as holiday;
import 'package:transformore_app/teamwork/time/attendance_index_page.dart' as attendance;

class TimeManagementPage extends StatefulWidget {
  static String tag = 'time-management-page';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TimeManagementState();
  }
}

class TimeManagementState extends State<TimeManagementPage> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Time Management"),
        backgroundColor: Color(0xff4969A5),
        bottom: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.access_time, color: Colors.white,), text: "Holiday",),
              new Tab(icon: new Icon(FeatherIcons.calendar, color: Colors.white,),text: "Attendance Index",),
            ]),
      ),
      resizeToAvoidBottomPadding: false,
      body: new TabBarView(
          controller: controller,
          children: <Widget> [
            new holiday.HolidayPage(),
            new attendance.AttendanceIndex()
          ]),
    );
  }

}