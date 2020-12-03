import 'package:flutter/material.dart';
import 'Screen1.dart';

void main() {
  runApp(SolarCal());
}

class SolarCal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark().copyWith(

        primaryColor: Color(0xFF526067),
        //primaryColor: Color(0xFF526067),
        scaffoldBackgroundColor: Color(0xFFC2CBCA),
      ),
      home: Screen1(),

    );
  }
}


