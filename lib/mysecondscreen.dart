import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'mythird.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("We Meet Again !"),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Image.asset('assets/gambar2.jpg', height: 600.0, width: 400.0,),
        Text(
          'Ini Adalah Halaman Kedua',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 2.0),
        ),
        RaisedButton(
          color: Colors.indigoAccent,
          child: Text(
            'Kembali Ke Halaman Pertama?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
        RaisedButton(
          color: Colors.indigoAccent,
          child: Text('Pergi Ke Halaman Ketiga?',style: TextStyle(
              color: Colors.white,
            ),
            ),
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
