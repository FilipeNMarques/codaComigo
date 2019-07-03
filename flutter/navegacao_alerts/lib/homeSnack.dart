import 'package:flutter/material.dart';

class HomeSnack extends StatefulWidget {
  @override
  _HomeSnackState createState() => _HomeSnackState();
}

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeSnackState extends State<HomeSnack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello Snackbar"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.purple,
              textColor: Colors.white,
              child: Text("Hey Snackbar"),
              onPressed: () {
                final snackbar = SnackBar(
                  content: Text("Hello from SnackBar :)"),
                );
                _scaffoldKey.currentState.showSnackBar(snackbar);
              },
            ),
            RaisedButton(
              color: Colors.purple,
              textColor: Colors.white,
              child: Text("Hey Dialog"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
