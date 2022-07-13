import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReulstScreen extends StatelessWidget {
  final int result;
  final double wieght;
  final double height;
  final String name;
  // ignore: prefer_typing_uninitialized_variables
  var age;
  String? bmiStatues;

  ReulstScreen({Key? key,
    required this.result,
    required this.wieght,
    required this.height,
    required this.name,
    required this.age
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    setBmiStatus();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
              'Result Screen',
              style:
              TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Your Name is : $name',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your Age is : $age',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your Height is : $height',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your Weight is :$wieght',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your BMI Result is : $result',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your Status is : $bmiStatues',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setBmiStatus() {
    if (result>30)
      {
        bmiStatues="Obese";
      }
    else if (result>=25)
      {
        bmiStatues="OverWeight";
      }
    else if (result>=18.5)
      {
        bmiStatues="Normal";
      }
    else if (result<18.5)
      {
        bmiStatues="UnderWeight";
      }
  }
}