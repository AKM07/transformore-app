import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetRosterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}

class SetRosterState extends State<SetRosterPage> {

  DateTime selectedDate = DateTime.now();

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
    List<Widget> children = new List();

    Widget buildBackground() => new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(250), // here the desired height
          child: AppBar()),
    );

    children.add(buildBackground());

    final nrpEditText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "NRP",
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
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
          ),
        )
      ],
    );

    final fromDateEditText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "From",
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
                prefixIcon: Icon(Icons.date_range),),
            enabled: false,
            onTap: () {
              selectDate(context);
            },
          ),
        )
      ],
    );

    final toDateEditText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "To",
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
                prefixIcon: Icon(Icons.date_range),),
            enabled: false,
            onTap: () {
              selectDate(context);
            },
          ),
        )
      ],
    );

    final rosterEditText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "Roster",
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
                suffixIcon: Icon(FeatherIcons.chevronDown)),
            enabled: false,
          ),
        )
      ],
    );

    final submitButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        borderRadius: BorderRadius.circular(5),
        shadowColor: Colors.orangeAccent.shade100,
        child: MaterialButton(
          minWidth: 200,
          height: 42,
          onPressed: () {
//            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.orange,
          child: Text('Submit', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final widgets = Container(
      padding: EdgeInsets.all(15),
      child: Card(
        margin: EdgeInsets.fromLTRB(15, 150, 15, 15),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(25),
          children: <Widget>[
            nrpEditText,
            SizedBox(
              height: 30,
            ),
            fromDateEditText,
            SizedBox(
              height: 24,
            ),
            toDateEditText,
            SizedBox(
              height: 24,
            ),
            rosterEditText,
            SizedBox(
              height: 24,
            ),
            submitButton
          ],
        ),
      ),
    );
    children.add(widgets);

    return Scaffold(
      body: Stack(
        children: children,
      ),
    );
  }

}