import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: Container(
          height: 300,
          width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Cappuccino_Chiang_Mai.JPG/600px-Cappuccino_Chiang_Mai.JPG",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
