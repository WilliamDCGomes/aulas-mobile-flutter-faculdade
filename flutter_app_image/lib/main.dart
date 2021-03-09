import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Olá Flutter 2",
      home: Stack(
        children: <Widget>[
          Image.asset(
            "images/florest.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: "menu de navegação",
                  onPressed: null,
                ),
                title: Text("Minha Aplicação"),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    tooltip: 'Buscar',
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    tooltip: 'Buscar',
                    onPressed: null,
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network('https://wallpapercave.com/wp/wp2924090.jpg'),
                    Text("Amazonia",
                        style: TextStyle(fontSize: 50.0, color: Colors.green)),
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        )),
                    Text("Assinatura"),
                  ],
                ),
              )),
        ],
      ));
}
