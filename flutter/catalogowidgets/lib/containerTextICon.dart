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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // child: Container(
    //   //Mesmo setando valores menores para o tamanho do container filho
    //   //ele herda as propriedades do container pai.
    //   width: 50,
    //   height: 50,
    //   color: Colors.red,
    // ) Quando o container pai não tem nenhum valor de tamanho setado, dai você pode passar os valores dentro dos containers filho
    // child: Text(
    //   "Meu primeiro texto",
    //   style: TextStyle(
    //       color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 18),
    //   textAlign: TextAlign.center,
    return Center(
      child: Container(
        width: 250,
        height: 50,
        color: Colors.pinkAccent,
        alignment: Alignment.center,
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white54,
        ),
      ),
    );
  }
}
