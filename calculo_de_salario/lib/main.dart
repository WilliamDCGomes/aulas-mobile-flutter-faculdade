import 'package:calculo_de_salario/secondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme:
      ThemeData(brightness: Brightness.light, primaryColor: Colors.amber),
      title: "Etanol ou Gasolina",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

String escolheCombustivel(double calculoGasEt) {
  if (calculoGasEt < 0.7) {
    return "Escolha o Etanol!";
  } else {
    return "Escolha a Gasolina!";
  }
}

class _HomeState extends State<Home> {
  final horasTrabalhadas = TextEditingController();
  final salarioHora = TextEditingController();
  final totalDependentes = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: Text("Cálculo de Salário", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black)),
          backgroundColor: Colors.amber,
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      'https://d2dxldo5hhj2zu.cloudfront.net/img/674x,jpeg/https://d3043uog1ad1l6.cloudfront.net/uploads/2020/05/047.jpg'),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: horasTrabalhadas,
                    style: TextStyle(color: Colors.amber, fontSize: 18.0),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                            gapPadding: 01.0,
                            borderSide: BorderSide()
                        ),
                        labelText: "Horas Trabalhadas",
                        labelStyle: TextStyle(color: Colors.amber)
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: salarioHora,
                    style: TextStyle(color: Colors.amber, fontSize: 18.0),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                            gapPadding: 01.0,
                            borderSide: BorderSide()
                        ),
                        labelText: "Salário Hora",
                        labelStyle: TextStyle(color: Colors.amber)
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: totalDependentes,
                    style: TextStyle(color: Colors.amber, fontSize: 18.0),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                            gapPadding: 01.0,
                            borderSide: BorderSide()
                        ),
                        labelText: "Total de Dependentes",
                        labelStyle: TextStyle(color: Colors.amber)
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeSecond()
                              )
                          );
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.amber; // Use the component's default.
                          },
                        ),
                      ),
                      child: Text(
                        'Enviar', style: TextStyle(color: Colors.white),
                      )
                  ),
                ],
              ),
            )
        )
    );
  }
}