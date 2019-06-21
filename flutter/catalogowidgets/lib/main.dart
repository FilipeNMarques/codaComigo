import 'package:flutter/material.dart';
import 'button-text-icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/bg.jpeg"),
            fit: BoxFit.cover,
          )),
          // color: Colors.yellow,
          // width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/logo.png",
                fit: BoxFit.contain,
              ),
              ButtonTextIcon(
                color: Colors.red,
                text: "Entrar com o Google",
                iconData: Icons.add_location,
              ),
              ButtonTextIcon(
                iconData: Icons.wifi_tethering,
                color: Colors.blue,
                text: "Entrar com o Facebook",
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.cyan,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.indigo,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.pink,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
