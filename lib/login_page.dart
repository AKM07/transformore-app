import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformore_app/home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  State<StatefulWidget> createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  bool isHidePassword = false;

  void passwordVisibility() {
    setState(() {
      isHidePassword = !isHidePassword;
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

    final logo = Center(
      child: Container(
          width: 150,
          height: 150,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new NetworkImage("https://i.imgur.com/IvUfbg4.jpg")))),
    );

    final emailEditText = Column(
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
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
          ),
        )
      ],
    );

    final passwordEditText = Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              "Password",
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
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  passwordVisibility();
                },
                child: Icon(
                  isHidePassword ? Icons.visibility_off : Icons.visibility,
                  color: isHidePassword ? Colors.grey : Colors.blueAccent,
                ),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
          ),
        )
      ],
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        borderRadius: BorderRadius.circular(5),
        shadowColor: Colors.orangeAccent.shade100,
        child: MaterialButton(
          minWidth: 200,
          height: 42,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.orange,
          child: Text('Login', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final widgets = Container(
      padding: EdgeInsets.all(15),
      child: Card(
        margin: EdgeInsets.fromLTRB(15, 150, 15, 15),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(25),
          children: <Widget>[
            logo,
            SizedBox(
              height: 20,
            ),
            emailEditText,
            SizedBox(
              height: 30,
            ),
            passwordEditText,
            SizedBox(
              height: 24,
            ),
            loginButton,
            forgotLabel
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
