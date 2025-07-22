import 'package:flutter/material.dart';

class ColumnExperiment extends StatelessWidget {
  const ColumnExperiment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Flutter Column Experiment',
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: null, child: Text("B1")),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: ElevatedButton(onPressed: null, child: Text("B1")),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: ElevatedButton(onPressed: null, child: Text("B1")),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: ElevatedButton(onPressed: null, child: Text("B1")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
