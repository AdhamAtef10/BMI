import 'dart:math';
import 'package:bmiv2/views/Result_Screen.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  final _formKey = GlobalKey<FormState>();

   double height = 120;
   double weight=0;
   // ignore: prefer_typing_uninitialized_variables
   var age;
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController  = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI Calculator',
            style:
            TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Padding(
              // Word BMI
              padding: EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'BMI',
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                ),
              ),
            ), // Word BMI
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Name';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 100),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Age';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      controller: ageController,
                      decoration: InputDecoration(
                        labelText: 'Age',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 100),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Height!';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      controller: heightController,
                      decoration: InputDecoration(
                        hintText: 'Enter in form of CM',
                        labelText: 'Height',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 100),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Weight!';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      controller: weightController,
                      decoration:
                      InputDecoration(
                        hintText: 'Enter in form of KG',
                        labelText: 'Weight',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 100),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {
                          height = double.parse(heightController.value.text);
                          weight = double.parse(weightController.value.text);
                          double result=weight/pow(height/100, 2);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:(context)=>ReulstScreen(
                                result: result.round(),
                                height: height.roundToDouble(),
                                wieght: weight,
                                name:  nameController.text,
                                age: ageController.text,
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          'Calculate!',
                          style: TextStyle(color: Colors.blue, fontSize: 27),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}