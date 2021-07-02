import 'package:flutter/material.dart';
import 'src/views/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoguha',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
        primaryColor: Color(0xFF7C9A92),
        accentColor: Color(0xFF253334)
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
