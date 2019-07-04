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
        title: Text("Hello Snackbar and Dialog"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(
              builder: (BuildContext context) {
                return RaisedButton(
                  color: Colors.purple,
                  textColor: Colors.white,
                  child: Text("Hey Snackbar 2"),
                  onPressed: () {
                    final snackbar = SnackBar(
                      content: Text("Hello from snackbar2! :)"),
                    );
                    Scaffold.of(context).showSnackBar(snackbar);
                    //Nesse caso não vai funcionar porque o Sacaffold está fora do context ainda.
                  },
                );
              },
            ),
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
              textColor: Colors.white,
              color: Colors.purple,
              onPressed: () {
                //Call dialog
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Hello from Dialog! :)"),
                        content: Text("Content of dialog"),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("OK"),
                          )
                        ],
                      );
                    });
              },
              child: Text("Hey dialog"),
            )
          ],
        ),
      ),
    );
  }
}
