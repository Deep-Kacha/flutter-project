import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_design/Counter/counter_controller.dart';
// import 'package:get/state_manager.dart';

// ignore: must_be_immutable
class Counter extends StatelessWidget {
  CounterController controller = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Total Clicks", style: TextStyle(fontSize: 50)),
          Obx(
            () => Text(
              controller.count.value.toString(),
              style: TextStyle(fontSize: 40),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  controller.increment();
                },
                child: Icon(Icons.add, size: 50),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  controller.decrement();
                },
                child: Icon(Icons.remove, size: 50),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  controller.reset();
                },
                child: Icon(Icons.undo, size: 50),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
