import 'package:animation_app/myanim.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FLOWER GALLERY',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.black,
          titleSpacing: 0.00,
        centerTitle: true,
        toolbarHeight: 60.2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        elevation: 0.00,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'add Icon',
            onPressed: () {
        //Navigator.push(context , MaterialPageRoute(builder: (context) => firstscreen()));
            },
          )],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        ),
        body: MyA1(),
      ),
       debugShowCheckedModeBanner: false,
    ),
  );
}



