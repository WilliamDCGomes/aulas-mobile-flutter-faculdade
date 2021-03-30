import 'package:flutter/material.dart';
import "dart:async";
import "dart:convert";
import "package:http/http.dart" as http;

const request = "https://api.hgbrasil.com/finance?format=json&key=dd81bc40";

void main() async {
  runApp(
      MaterialApp(
        home: HomeSecond(),
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
      )
  );
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}

class HomeSecond extends StatefulWidget {
  String valueReal;
  HomeSecond({this.valueReal});
  @override
  _HomeSecondState createState() => _HomeSecondState();
}

class _HomeSecondState extends State<HomeSecond> {
  final realController = TextEditingController();
  final dollarController = TextEditingController();
  final euroController = TextEditingController();
  final libraController = TextEditingController();

  double real;
  double dollar;
  double euro;
  double libra;

  bool resetReal = false;
  bool resetDollar = false;
  bool resetEuro = false;
  bool resetLibra = false;

  void _realChanged(String text){
    double real = 0;
    if(resetReal){
      realController.text = text[0];
      realController.selection = TextSelection.fromPosition(TextPosition(offset: realController.text.length));
      resetReal = false;
    }
    if(!text.isEmpty) {
      real = double.parse(text);
    }
    else{
      realController.text = "0.00";
      resetReal = true;
    }
    dollarController.text = (real/dollar).toStringAsFixed(2);
    euroController.text = (real/euro).toStringAsFixed(2);
    libraController.text = (real/libra).toStringAsFixed(2);
  }

  void _dollarChanged(String text){
    double dollars = 0;
    if(resetDollar){
      dollarController.text = text[0];
      dollarController.selection = TextSelection.fromPosition(TextPosition(offset: dollarController.text.length));
      resetDollar = false;
    }
    if(!text.isEmpty) {
      dollars = double.parse(text);
    }
    else{
      dollarController.text = "0.00";
      resetDollar = true;
    }
    realController.text = (dollars * dollar).toStringAsFixed(2);
    euroController.text = (dollars * dollar / euro).toStringAsFixed(2);
    libraController.text = (dollars * dollar / libra).toStringAsFixed(2);
  }

  void _euroChanged(String text){
    double euros = 0;
    if(resetEuro){
      euroController.text = text[0];
      euroController.selection = TextSelection.fromPosition(TextPosition(offset: euroController.text.length));
      resetEuro = false;
    }
    if(!text.isEmpty) {
      euros = double.parse(text);
    }
    else{
      euroController.text = "0.00";
      resetEuro = true;
    }
    realController.text = (euros * euro).toStringAsFixed(2);
    dollarController.text = (euros * euro / dollar).toStringAsFixed(2);
    libraController.text = (euros * euro / libra).toStringAsFixed(2);
  }

  void _librasChanged(String text){
    double libra = 0;
    if(resetLibra){
      libraController.text = text[0];
      libraController.selection = TextSelection.fromPosition(TextPosition(offset: libraController.text.length));
      resetLibra = false;
    }
    if(!text.isEmpty) {
      libra = double.parse(text);
    }
    else{
      libraController.text = "0.00";
      resetLibra = true;
    }
    realController.text = (libra * real).toStringAsFixed(2);
    libraController.text = (dollars * dollar / libra).toStringAsFixed(2);
  }

  void _start(){
    realController.text = widget.valueReal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Conversor de Moedas (Aula FIB)",
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: FutureBuilder<Map>(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                  child: Text("Carregando Dados...",
                      style: TextStyle(color: Colors.amber, fontSize: 22.0),
                      textAlign: TextAlign.center),
                );
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Erro ao Carregar Dados :(",
                        style: TextStyle(color: Colors.amber, fontSize: 22.0),
                        textAlign: TextAlign.center),
                  );
                }
                else {
                  dollar = snapshot.data["results"]["currencies"]["USD"]["buy"];
                  euro = snapshot.data["results"]["currencies"]["EUR"]["buy"];
                  libra = snapshot.data["results"]["currencies"]["GBP"]["buy"];
                  realController.text = widget.valueReal + ".00";
                  _realChanged(widget.valueReal);
                  return SingleChildScrollView(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Icon(Icons.monetization_on,
                            size: 150.0, color: Colors.amber),
                        buildTextField("Reais", "R\$ ", realController, _realChanged),
                        Divider(),
                        buildTextField("Euros", "€ ", euroController, _euroChanged),
                        Divider(),
                        buildTextField("Dólares", "US\$ ", dollarController, _dollarChanged),
                        Divider(),
                        buildTextField("Libras", "£ ", libraController, _librasChanged),
                      ],
                    ),
                  );
                }
            }
          }),
    );
  }
}
Widget buildTextField(String label, String prefix, TextEditingController controller, Function f){
  return TextField(
    controller: controller,
    decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.amber),
        prefixText: prefix
    ),
    style: TextStyle(color: Colors.amber, fontSize: 22.0),
    onChanged: f,
    keyboardType: TextInputType.numberWithOptions(decimal: true),
  );
}