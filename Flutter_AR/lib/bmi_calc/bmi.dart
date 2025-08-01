import 'dart:developer';

import 'package:flutter/material.dart';

class BmiCalcScreen extends StatefulWidget {
  const BmiCalcScreen({super.key});

  @override
  State<BmiCalcScreen> createState() => _BmiCalcScreenState();
}

class _BmiCalcScreenState extends State<BmiCalcScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double result = 0;
  bool isValidated = false;
  void validate() {
    if (weightController.text.isNotEmpty && heightController.text.isNotEmpty) {
      isValidated = true;
    } else {
      isValidated = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calc'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (v) {
                validate();
              },
              controller: weightController,
              decoration: InputDecoration(
                labelText: "Weight in Kgs",
                hintText: "Enter your Weight in Kgs",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (v) {
                log("from heightController" + v);
                validate();
              },
              controller: heightController,
              decoration: InputDecoration(
                labelText: "Height in Meters",
                hintText: "Enter your Height in Meters",
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: isValidated
                  ? () {
                      double wt = double.parse(weightController.text);
                      double ht = double.parse(heightController.text);
                      result = wt / (ht * ht);
                      setState(() {});
                    }
                  : null,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              'Result:${result.toStringAsFixed(2)}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
