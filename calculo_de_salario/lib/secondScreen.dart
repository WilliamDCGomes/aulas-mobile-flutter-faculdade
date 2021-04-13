import 'package:flutter/material.dart';

void main() {
  runApp(HomeSecond());
}

class HomeSecond extends StatefulWidget {
  @override
  _HomeSecond createState() => _HomeSecond();
}

class _HomeSecond extends State<HomeSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Resultado!",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.network(
                    'https://d2dxldo5hhj2zu.cloudfront.net/img/674x,jpeg/https://d3043uog1ad1l6.cloudfront.net/uploads/2020/05/047.jpg'),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Salário Bruto: R\$ ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Desconto Inss: R\$ ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Desconto IR: R\$ ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Salário Líquido: R\$ ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ),
              ],
            ),
          )
        )
    );
  }
}
