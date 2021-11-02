import 'package:flutter/material.dart';
import 'package:lista_flutter/AddLista.dart';
void main(){
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    )
  );
}
List<Compra> _compras = List<Compra>();
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
            "Lista com Flutter",
            style: TextStyle(
              color: Colors.black
            ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: _compras.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            _compras.length > 0 ? _compras[index].titulo : "",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          Text(
                            _compras.length > 0 ? _compras[index].subtitulo : "",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          Text(
                            _compras.length > 0 ? _compras[index].preco?.toString().replaceAll(".", ",") : "",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ],
                      )
                  ),
                );
              }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SegundaTela(_compras)
            ),
          );
          setState(() {

          });
        },
        child: const Icon(Icons.add),
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
class Compra{
  String titulo;
  String subtitulo;
  double preco;
  bool remove;
  Compra(this.titulo, this.subtitulo, this.preco, {this.remove});
}