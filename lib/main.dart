import 'package:flutter/material.dart';
import 'dart:math';

void main (){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Só é preciso uma pequena quantidade.",
    " Os espelhos permitem-nos ver objectos que não conseguimos ver directamente.",
    "Ficaremos extremamente felizes se cantar alguma coisa.",
    " A vossa coragem e sacrifício serão lembradas para todo o sempre."
  ];

  var _frase_Gerada = "click below to generate a new phrase";

  void _gerarFrase(){
    
    var numeroSorteado = Random().nextInt(_frases.length);
    
    setState(() {
      _frase_Gerada = _frases[numeroSorteado];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("phrases of the day"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        //width: double.infinity,
        /*decoration: BoxDecoration(
          border: Border.all(width: 3,color: Colors.amber)
        ),*/
        child : Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _frase_Gerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              )
            ),
            RaisedButton(
              child: Text(
                "New phrase",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              
              color: Colors.green,
              onPressed: _gerarFrase,
            ),
          ],
        )
      ),
      )
    );
      
    
  }
}