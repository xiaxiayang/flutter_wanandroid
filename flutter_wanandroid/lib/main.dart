import 'package:flutter/material.dart';
import 'package:flutter_wanandroid/routes/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wannadroid',
      theme: ThemeData(
        primaryColor: Colors.red[400],
      ),
      home: HomePage(),
    );
  }
}


