import 'package:flutter/material.dart';
import 'package:navegacao_alerts/secondWidget.dart';

class HomeNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Navigation"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return SecondWidget();
            }));
          },
          textColor: Colors.white,
          color: Colors.purple,
          child: Text("Próximo Widget"),
        ),
      ),
    );
  }
}
