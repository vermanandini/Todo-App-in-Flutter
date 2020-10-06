import 'package:flutter/material.dart';
import 'package:todo_app/view/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Scaffold(body: HomePage()));
  }
}
