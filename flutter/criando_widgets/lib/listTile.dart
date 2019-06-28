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
        appBar: AppBar(),
        body: HomeWidgets(),
      ),
    );
  }
}

class HomeWidgets extends StatelessWidget {
  _onPressed() {
    print("Clidado no item");
  }

  Widget _listTile() {
    return ListTile(
      leading: Icon(Icons.airline_seat_flat),
      title: Text("Deitado"),
      subtitle: Text("Na cama"),
      onTap: _onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
          _listTile(),
        ],
      ),
    );
  }
}
