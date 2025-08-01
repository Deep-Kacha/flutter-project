import 'dart:developer';

import 'package:flutter/material.dart';

class BmiCalcScreen extends StatefulWidget {
  const BmiCalcScreen({super.key});

  @override
  State<BmiCalcScreen> createState() => _BmiCalcScreenState();
}

// ...existing code...
class _BmiCalcScreenState extends State<BmiCalcScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double result = 0;
  String bmiCategory = '';
  bool isValidated = false;

  void validate() {
    if (weightController.text.isNotEmpty && heightController.text.isNotEmpty) {
      isValidated = true;
    } else {
      isValidated = false;
    }
    setState(() {});
  }

  void calculateBmiCategory(double bmi) {
    if (bmi < 16) {
      bmiCategory = "Severe Thinness";
    } else if (bmi >= 16 && bmi < 17) {
      bmiCategory = "Moderate Thinness";
    } else if (bmi >= 17 && bmi < 18.5) {
      bmiCategory = "Mild Thinness";
    } else if (bmi >= 18.5 && bmi < 25) {
      bmiCategory = "Normal";
    } else if (bmi >= 25 && bmi < 30) {
      bmiCategory = "Overweight";
    } else if (bmi >= 30 && bmi < 35) {
      bmiCategory = "Obese Class I";
    } else if (bmi >= 35 && bmi < 40) {
      bmiCategory = "Obese Class II";
    } else {
      bmiCategory = "Obese Class III";
    }
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
                      calculateBmiCategory(result);
                      setState(() {});
                    }
                  : null,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              'Result: ${result.toStringAsFixed(2)}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            SizedBox(height: 10),
            Text(
              bmiCategory.isNotEmpty ? 'Category: $bmiCategory' : '',
              style: TextStyle(fontSize: 22, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
// ...existing