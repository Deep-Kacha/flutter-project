import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Row(children: [productCard(), productCard(), productCard()]),
    );
  }

  Widget productCard() {
    return Expanded(
      child: Card(
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              Container(height: 100, color: Colors.red),
              Text(
                "Name of product",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text("25", style: TextStyle(color: Colors.red)),
                  Text("26", style: TextStyle(color: Colors.amber)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
