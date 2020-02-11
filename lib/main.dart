import 'package:flutter/material.dart';
import 'dart:core';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _ciclo1 = "1º ciclo";
  String _ciclo2 = "2º ciclo";
  String _ciclo3 = "3º ciclo";
  String _ciclo4 = "4º ciclo";
  String _ciclo5 = "5º ciclo";
  String _ciclo6 = "6º ciclo";

  void _calculate(){
    var thisInstant = new DateTime.now();

    setState(() {
      Duration ciclo = Duration(minutes: 90);

      var date = thisInstant.add(ciclo);
      _ciclo1 = "1º ciclo: " + (date.hour).toString().padLeft(2, "0") + ":" + (date.minute).toString().padLeft(2, "0");

      date = date.add(ciclo);
      _ciclo2 = "2º ciclo: " + (date.hour).toString().padLeft(2, "0") + ":" + (date.minute).toString().padLeft(2, "0");

      date = date.add(ciclo);
      _ciclo3 = "3º ciclo: " + (date.hour).toString().padLeft(2, "0") + ":" + (date.minute).toString().padLeft(2, "0");

      date = date.add(ciclo);
      _ciclo4 = "4º ciclo: " + (date.hour).toString().padLeft(2, "0") + ":" + (date.minute).toString().padLeft(2, "0");

      date = date.add(ciclo);
      _ciclo5 = "5º ciclo: " + (date.hour).toString().padLeft(2, "0") + ":" + (date.minute).toString().padLeft(2, "0");

      date = date.add(ciclo);
      _ciclo6 = "6º ciclo: " + (date.hour).toString().padLeft(2, "0") + ":" + (date.minute).toString().padLeft(2, "0");

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Soninho Bom"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),

        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.brightness_3, size: 110.0, color: Colors.black,),
              Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: (){
                          _calculate();
                        },
                        child: Text("Deitei", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                        color: Colors.black,
                      )
                  )
              ),
              //Text dos 6 ciclos
              Text(
                "$_ciclo1",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),
              Text(
                "$_ciclo2",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),
              Text(
                "$_ciclo3",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),
              Text(
                "$_ciclo4",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),
              Text(
                "$_ciclo5",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),
              Text(
                "$_ciclo6",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),
            ],
          ),
        )

    );
  }
}