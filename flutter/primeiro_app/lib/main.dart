import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(),
    );
  }
}
// Widget Stateless, como o nome já diz, é um widged sem estado, isso quer dizer que ele não tem o poder de modificar nada na tela.

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BodyWidget(),
    );
  }
}

//Já o Statefull Widget, consegue redezenhar a tela, ou seja, modificar o estado.
class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  Color color = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          color = (color == Colors.blueAccent) ? Colors.red : Colors.blueAccent;
        });
      },
      child: Container(
        color: color,
      ),
    );
  }
}
