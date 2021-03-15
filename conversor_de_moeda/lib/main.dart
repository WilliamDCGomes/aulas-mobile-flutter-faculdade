import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Digite o seu valor em reais",
                        labelStyle: TextStyle(color: Colors.amber),
                        prefixText: "R/$"
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.amber,
                      child: Text("Converter!!", style: TextStyle(fontSize: 20, color: Colors.white),),
                      onPressed: () {}

                  )
                ),
              ],
            )
          ],
        )
    );
  }
}
