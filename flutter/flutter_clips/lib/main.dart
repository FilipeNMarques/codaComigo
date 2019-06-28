import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Conta de usuário",
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              child: ClipOval(
                child: Image.asset("images/filipe.jpg", fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Filipe Marques",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "filipi.marques@gmail.com",
              style: TextStyle(color: Colors.grey[700], fontSize: 18),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 150,
                    child: RaisedButton.icon(
                        color: Colors.teal,
                        textColor: Colors.white,
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {},
                        label: Text("Voltar")),
                  ),
                  Material(
                    elevation: 7,
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(40),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(40),
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Contatos",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
