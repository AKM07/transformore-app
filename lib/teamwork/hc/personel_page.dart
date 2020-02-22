import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/model/personel_model.dart';

class PersonelPage extends StatefulWidget {
  static String tag = 'personel-page';

  @override
  State<StatefulWidget> createState() {
    return new PersonelPageState();
  }
}

class PersonelPageState extends State<PersonelPage> {
  bool isExpanded = false;

  iconMode(bool val) {
    setState(() {
      isExpanded = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    Widget buildBackground() => new Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(200), // here the desired height
              child: AppBar(
                title: Text("Personel"),
              )),
        );

    children.add(buildBackground());

    final searchField = Container(
      margin: EdgeInsets.fromLTRB(15, 100, 15, 0),
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

    children.add(searchField);

    final listPersonel = new Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(15, 200, 15, 0),
      child: Card(
        child: Expanded(
          child: ListView.builder(
            itemCount: personelList.length,
            itemBuilder: (context, i) {
              return new ExpansionTile(
                leading: Icon(
                  isExpanded ? Icons.indeterminate_check_box : Icons.add_box,
                  color: Colors.black,
                ),
                onExpansionChanged: iconMode,
                title: new Text(personelList[i].nama,
                    style: new TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                children: <Widget>[
                  new Column(
                    children: buildExpandableContent(personelList[i]),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );

    children.add(listPersonel);

    return Scaffold(
      body: Stack(
        children: children,
      ),
    );
  }

  buildExpandableContent(PersonelModel personelModel) {
    List<Widget> columnContent = [];
    columnContent.add(
      Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "NRP",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  personelModel.nrp,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "Nama",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  personelModel.nama,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "Departemen",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  personelModel.departemen,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "Jabatan",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  personelModel.jabatan,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "Posisi",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  personelModel.posisi,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "Grade",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  personelModel.grade,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            )
          ],
        ),
      )
    );

    return columnContent;
  }

  List<PersonelModel> personelList = [
    new PersonelModel(
      '1234567',
      "AAN ARDIYANTORO",
      "PLT",
      "PRA MECHANIC",
      "PRA MECHANIC",
      "1E",
    ),
    new PersonelModel(
      '1234567',
      "AAN ARDIYANTORO",
      "PLT",
      "PRA MECHANIC",
      "PRA MECHANIC",
      "1E",
    ),
    new PersonelModel(
      '1234567',
      "AAN ARDIYANTORO",
      "PLT",
      "PRA MECHANIC",
      "PRA MECHANIC",
      "1E",
    ),

    new PersonelModel(
      '1234567',
      "AAN ARDIYANTORO",
      "PLT",
      "PRA MECHANIC",
      "PRA MECHANIC",
      "1E",
    ),

    new PersonelModel(
      '1234567',
      "AAN ARDIYANTORO",
      "PLT",
      "PRA MECHANIC",
      "PRA MECHANIC",
      "1E",
    ),

    new PersonelModel(
      '1234567',
      "AAN ARDIYANTORO",
      "PLT",
      "PRA MECHANIC",
      "PRA MECHANIC",
      "1E",
    ),

    new PersonelModel(
      '1234567',
      "AAN ARDIYANTORO",
      "PLT",
      "PRA MECHANIC",
      "PRA MECHANIC",
      "1E",
    ),

    new PersonelModel(
      '1234567',
      "AAN ARDIYANTORO",
      "PLT",
      "PRA MECHANIC",
      "PRA MECHANIC",
      "1E",
    ),
  ];
}
