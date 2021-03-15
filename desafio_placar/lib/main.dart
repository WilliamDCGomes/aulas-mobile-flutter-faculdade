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
  String brazilFlat = "https://media0.giphy.com/media/bIqdxoOVJ2oak/giphy.gif";
  String germanyFlat = "https://steamuserimages-a.akamaihd.net/ugc/927048093873202692/C054159380C5F88BE860BF2957B9E9F1C8368FEF/";
  String flatWinner = "https://media0.giphy.com/media/bIqdxoOVJ2oak/giphy.gif";
  String flat2Winner = "https://steamuserimages-a.akamaihd.net/ugc/927048093873202692/C054159380C5F88BE860BF2957B9E9F1C8368FEF/";
  String winnerTitle = "Empatado!!!";
  String empate = "https://i.pinimg.com/originals/db/e8/ae/dbe8ae2e31e0f2f88615010bd5f6462e.gif";
  String alemanhaWin = "https://media4.giphy.com/media/6iEsc43dz5L0s/giphy.gif?cid=ecf05e47dufvtqxprls3nn1xobsyptm5t23ljv14an9qvgx7&rid=giphy.gif";
  String brasilWin = "https://media1.giphy.com/media/37QUuUTqQhMS3M9vV5/giphy.gif?cid=ecf05e47ulle7ecxuz9mnp54cxxohfuymw7ajx9vcw9ifsxs&rid=giphy.gif";
  String dynamic = "https://i.pinimg.com/originals/db/e8/ae/dbe8ae2e31e0f2f88615010bd5f6462e.gif";
  int timeAPoints = 0;
  int timeBPoints = 0;

  void _changeResult(int time, int value) {
    setState(() {
      if (time == 1) {
        if (timeAPoints == 0 && value < 0) {
          return;
        }
        timeAPoints += value;
      } else {
        if (timeBPoints == 0 && value < 0) {
          return;
        }
        timeBPoints += value;
      }
      if (timeAPoints > timeBPoints) {
        winnerTitle = "Brasil!!!";
        flatWinner = brazilFlat;
        flat2Winner = brazilFlat;
        dynamic = brasilWin;
      } else if (timeAPoints < timeBPoints) {
        winnerTitle = "Alemanha!!!";
        flatWinner = germanyFlat;
        flat2Winner = germanyFlat;
        dynamic = alemanhaWin;
      } else {
        winnerTitle = "Empatado!!!";
        flatWinner = brazilFlat;
        flat2Winner = germanyFlat;
        dynamic = empate;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Desafio Placar"),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Image.network(brazilFlat),
                  ),
                  Text(
                    "   Brasil   X   Alemanha   ",
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Image.network(germanyFlat),
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(children: <Widget>[
                  Text(
                    "$timeAPoints",
                    style: TextStyle(color: Colors.white, fontSize: 28.0),
                  ),
                  Text("   X   ",
                      style: TextStyle(color: Colors.white, fontSize: 28.0)),
                  Text(
                    "$timeBPoints",
                    style: TextStyle(color: Colors.white, fontSize: 28.0),
                  ),
                ])),
            Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                    margin: EdgeInsets.only(top: 25.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            FlatButton(
                              shape: CircleBorder(),
                              color: Colors.deepOrangeAccent,
                              child: Text("+", style: TextStyle(fontSize: 40)),
                              textColor: Colors.white,
                              onPressed: () {
                                _changeResult(1, 1);
                              },
                            ),
                            Text(""),
                            FlatButton(
                              shape: CircleBorder(),
                              color: Colors.deepOrangeAccent,
                              child: Text("-", style: TextStyle(fontSize: 40)),
                              textColor: Colors.white,
                              onPressed: () {
                                _changeResult(1, -1);
                              },
                            ),
                          ],
                        ),
                        Text("   "),
                        Column(
                          children: [
                            FlatButton(
                              shape: CircleBorder(),
                              color: Colors.deepOrangeAccent,
                              child: Text("+", style: TextStyle(fontSize: 40)),
                              textColor: Colors.white,
                              onPressed: () {
                                _changeResult(2, 1);
                              },
                            ),
                            Text(""),
                            FlatButton(
                              shape: CircleBorder(),
                              color: Colors.deepOrangeAccent,
                              child: Text("-", style: TextStyle(fontSize: 40)),
                              textColor: Colors.white,
                              onPressed: () {
                                _changeResult(2, -1);
                              },
                            ),
                          ],
                        ),
                      ],
                    ))),
            Container(
                width: 200.0,
                height: 200.0,
                child: Image.network(dynamic),
              ),
            Row(
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  child: Image.network(flatWinner),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "$winnerTitle",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  child: Image.network(flat2Winner),
                )
              ],
            )
          ])
        ],
      ),
    );
  }
}
