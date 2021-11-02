import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  return runApp(_ChartApp());
}

class _ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  int i = 0;
  List<ReacoesData> data = [
    ReacoesData('Ruim', 30, const Color(0XFFFF8642)),
    ReacoesData('M. Ruim', 60, const Color(0XFFFF545D)),
    ReacoesData('Regular', 150, const Color(0XFFFFD101)),
    ReacoesData('M. Bom', 260, const Color(0XFF00CC5D)),
    ReacoesData('Bom', 300, const Color(0XFF80D96B))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: Column(children: [
          //Initialize the chart widget
          SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              // Chart title
              title: ChartTitle(
                text: 'Votos',
                alignment: ChartAlignment.near,
              ),
              // Enable legend
              legend: Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<ReacoesData, String>>[
                StackedColumnSeries<ReacoesData, String>(
                    dataSource: data,
                    xValueMapper: (ReacoesData reacoes, _) => reacoes.nome,
                    yValueMapper: (ReacoesData reacoes, _) => reacoes.votos,
                    name: 'Reações',
                    width: 0.5,
                    pointColorMapper: (ReacoesData reacoes, _) => reacoes.cor,

                )
              ]),
        ]));
  }
}

class ReacoesData {
  ReacoesData(this.nome, this.votos, this.cor);

  final String nome;
  final double votos;
  final Color cor;
}