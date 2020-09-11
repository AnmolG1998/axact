import 'package:flutter/material.dart';
import 'package:axact/pages/firstpage.dart';
import 'package:axact/pages/homepage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'axactStudio',
      theme: ThemeData(),
      home: firstPage()
    );
  }
}
