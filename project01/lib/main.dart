import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Olá Flutter 2",
    home: Scaffold(
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
      body: Center(child: Text("Olá Flutter")),
    ),
  ));
}