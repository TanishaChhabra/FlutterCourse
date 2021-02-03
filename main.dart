import 'package:flutter/material.dart';

void main() {
  //MyApp app = new MyApp(); new is optional in dart
  //MyApp app = MyApp();
  //runApp(MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    MaterialApp app = new MaterialApp(home: Homepage());
    return app;

  }
}

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold();
    return scaffold;
  }



}
