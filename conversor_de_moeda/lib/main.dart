import 'package:flutter/material.dart';

import 'secondScreen.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
        hintColor: Colors.amber,
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
          hintStyle: TextStyle(color: Colors.amber),
        )
    ),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Conversor de Moedas (Aula FIB)"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Icon(Icons.monetization_on, size: 150.0, color: Colors.amber),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Digite o valor que deseja convertet!",
                        labelStyle: TextStyle(color: Colors.amber),
                        border: OutlineInputBorder()
                    ),
                    style: TextStyle(color: Colors.amber, fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeSecond()
                            ),
                          );
                        },
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child:
                          Text("Converter!!", style: TextStyle(
                              fontSize: 25, color: Colors.black),),
                        )
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}
