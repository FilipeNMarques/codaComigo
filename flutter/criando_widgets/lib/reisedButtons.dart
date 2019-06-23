import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        body: HomeWidgets(),
      ),
    );
  }
}

class HomeWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              print("Button clicked");
            },
            child: Text(
              "Clica aqui, bb",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.teal,
          ),
          RaisedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.add_to_home_screen,
              color: Colors.white,
              size: 30,
            ),
            label: Text(
              "Botao com icon",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.amberAccent,
          )
        ],
      ),
    );
  }
}
