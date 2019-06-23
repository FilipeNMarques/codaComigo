import 'package:flutter/material.dart';
import 'custom-circle-avatar.dart';

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
          CircleAvatar(
            backgroundColor: Colors.amber,
            child: Text("FM"),
          ),
          SizedBox(
            height: 100,
          ),
          CustomCircleAvatar(
            bc: Colors.teal,
            size: 60,
            child: Text(
              "FM",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
