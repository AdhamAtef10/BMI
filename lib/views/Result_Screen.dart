import 'package:flutter/material.dart';

class ReulstScreen extends StatelessWidget {
  final int result;
  final double wieght;
  final double height;

  const ReulstScreen(
      {Key? key,
      required this.result,
      required this.wieght,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Result Screen',
          style:
              TextStyle(
                  color: Colors.pink[600],
                  fontWeight: FontWeight.bold,
              ),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Height is : $height',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your Weight is :$wieght',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your Result is : $result',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
