import 'package:flutter/material.dart';

import 'bodyWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              // DrawerHeader(
              //     child: Container(
              //   child: Image.asset(
              //     "images/codacomigo.jpg",
              //   ),
              // ),
              // ),
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Image.asset("images/filipe.jpg"),
                ),
                accountName: Text("Filipe Marques"),
                accountEmail: Text("codacomigo@gmail.com"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.person_pin),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.assessment),
                title: Text("Relatórios"),
              ),
              ListTile(
                leading: Icon(Icons.attach_money),
                title: Text("Faturamento"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Coda Comigo"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.comment),
              onPressed: () {},
            ),
          ],
        ),
        body: BodyWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.work),
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Início")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Perfil")),
          BottomNavigationBarItem(
              icon: Icon(Icons.pageview), title: Text("Procurar")),
        ]),
      ),
    );
  }
}
