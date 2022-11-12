
import 'package:clayton_farms/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'design_elements/nav-drawer.dart';


void main() => runApp(MyApp());

final logosize = 2.9;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clayton Farms',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        toolbarHeight: 65,
        title: Image(
        image: new ExactAssetImage("assets/images/logo.png"),
        height: 56.0 * logosize,
        width: 40.0 * logosize,
        alignment: FractionalOffset.center),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: HomePage(),
      ),
    );
  }
}
