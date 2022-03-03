// ignore_for_file: prefer_const_constructors, prefer_void_to_null
import 'package:flutter/material.dart';
import 'screens/Attachments.dart';


// import 'complete_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Attachments(),
    );
  }
}
