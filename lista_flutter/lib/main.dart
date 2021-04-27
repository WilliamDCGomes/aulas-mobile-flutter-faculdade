import 'package:flutter/material.dart';
void main(){
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
      appBar: AppBar(
        title: Text("Trabalhando com listas"),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR3s5VCeDqrBpJ4MvFe9sG01Zt6Iq3i80b-pqf-a79ZaFPs1Ts4e9QWMZUU1BBA-VLaSo&usqp=CAU',
                    width: 120,),
                  SizedBox(width: 10.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Título",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Sub Título",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ]
            ),
            Divider(),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network('https://p2.trrsf.com/image/fget/cf/1200/1200/filters:quality(85)/images.terra.com/2016/04/20/rexfeatures-michael-goh-5-bbc-nova.jpg',
                    width: 120,),
                  SizedBox(width: 10.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Título",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Sub Título",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ]
            ),
            Divider(),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network('https://http2.mlstatic.com/D_NQ_NP_959892-MLB27367053943_052018-O.jpg',
                    width: 120,),
                  SizedBox(width: 10.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          "Título",
                          style: TextStyle(color: Colors.white),
                      ),
                      Text(
                          "Sub Título",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ]
            ),
            Divider(),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network('https://images6.alphacoders.com/556/556759.jpg',
                    width: 120,),
                  SizedBox(width: 10.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          "Título",
                          style: TextStyle(color: Colors.white),
                      ),
                      Text(
                          "Sub Título",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ]
            ),
          ],
        )
      )
    );
  }
}
