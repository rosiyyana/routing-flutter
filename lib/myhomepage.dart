import 'dart:ui';

import 'package:flutter/material.dart';
import 'mysecondscreen.dart';
import 'mythird.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Hallo, Rosiyana !"),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Image.asset('assets/gambar1.jpg', height: 600.0, width: 400.0,),
        Text(
          'Ini Adalah Halaman Pertama',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 2.0),
        ),
        RaisedButton(
          color: Colors.indigoAccent,
          child: Text(
            'Pergi Ke Halaman Kedua?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
        RaisedButton(
          color: Colors.indigoAccent,
          child: Text('Pergi Ke Halama Ketiga?',
          style: TextStyle(
              color: Colors.white,
            ),),
          
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdScreen()),
            );
          },
        ),

      ]),
    );
  }
}
