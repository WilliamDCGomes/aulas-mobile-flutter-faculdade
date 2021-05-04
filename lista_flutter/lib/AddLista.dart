import 'package:flutter/material.dart';
import 'package:lista_flutter/main.dart';
class SegundaTela extends StatefulWidget {
  List<Compra> compras;
  SegundaTela(this.compras);
  @override
  _SegundaTelaState createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  TextEditingController titulo = TextEditingController();
  TextEditingController subTitulo = TextEditingController();
  TextEditingController preco = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Adicionando a lista",
          style: TextStyle(
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    style: TextStyle(color: Colors.amber, fontSize: 18.0),
                    controller: titulo,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelText: "Informe o Título",
                        labelStyle: TextStyle(color: Colors.amber),
                        border: OutlineInputBorder()
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    style: TextStyle(color: Colors.amber, fontSize: 18.0),
                    controller: subTitulo,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelText: "Informe o Sub Título",
                        labelStyle: TextStyle(color: Colors.amber),
                        border: OutlineInputBorder()
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    style: TextStyle(color: Colors.amber, fontSize: 18.0),
                    controller: preco,
                    textInputAction: TextInputAction.go,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Informe o Preco",
                        labelStyle: TextStyle(color: Colors.amber),
                        border: OutlineInputBorder()
                    ),
                  )
              ),
              RaisedButton(
                  child: Text(
                    "ADICIONAR",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  color: Colors.amber,
                  onPressed: (){
                    Compra compra = Compra(titulo.text, subTitulo.text, double.tryParse(preco.text.replaceAll(",", ".")));
                    widget.compras.add(compra);
                    Navigator.pop(context);
                  }
              )
            ],
          ),
        )
      )
    );
  }
}
