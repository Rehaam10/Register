import 'package:flutter/material.dart';
import 'screens/Address_Details.dart';
import 'screens/Personal_Details.dart';

import 'screens/complete_page.dart';

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
      home: PersonalDetails(),
    );
  }
}
