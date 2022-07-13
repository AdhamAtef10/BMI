
import 'package:bmiv2/views/BMI_Screen.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BMIScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
