import 'package:flutter/material.dart';

void main() {
  runApp(HomeSecond());
}

class HomeSecond extends StatefulWidget {
  int workHours;
  double sallaryValue;
  int dependents;
  HomeSecond({this.workHours, this.sallaryValue, this.dependents});

  @override
  _HomeSecond createState() => _HomeSecond();
}

class _HomeSecond extends State<HomeSecond> {
  double grossSallary = 0;
  double inssDiscount = 0;
  double irDiscount = 0;
  double netSallary = 0;

  @override
  Widget build(BuildContext context) {
    getValues();
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
                  "Salário Bruto: R\$ $grossSallary",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Desconto Inss: R\$ $inssDiscount",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Desconto IR: R\$ $irDiscount",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Salário Líquido: R\$ $netSallary",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ),
              ],
            ),
          )
        )
    );
  }
  void getValues(){
    grossSallary = widget.workHours * widget.sallaryValue + (50 * widget.dependents);
    getInssDiscount(this.grossSallary);
    getIrDiscount(this.grossSallary);
    netSallary = grossSallary - inssDiscount - irDiscount;
  }
  void getInssDiscount(double grossSalary){
    if(grossSallary <= 1000){
      inssDiscount = grossSallary * 8.5 / 100;
    }
    else{
      inssDiscount = grossSallary * 9 / 100;
    }
  }
  void getIrDiscount(double grossSalary){
    if(grossSalary <= 500){
      irDiscount = 0;
    }
    else if (grossSalary > 500 && grossSalary <= 1000){
      irDiscount = grossSallary * 5 / 100;
    }
    else{
      irDiscount = grossSallary * 7 / 100;
    }
  }
}
