import 'package:flutter/material.dart';

class SecondWidget extends StatefulWidget {
  @override
  _SecondWidgetState createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          textColor: Colors.white,
          color: Colors.purple,
          child: Text("Voltar"),
        ),
      ),
    );
  }
}
