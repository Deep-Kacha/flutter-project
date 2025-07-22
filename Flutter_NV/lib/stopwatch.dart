import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchExperiemnt extends StatefulWidget {
  const StopwatchExperiemnt({super.key});

  @override
  State<StopwatchExperiemnt> createState() => _StopwatchExperiemntState();
}

class _StopwatchExperiemntState extends State<StopwatchExperiemnt> {
  int seconds = 0;
  late Timer timer;
  String _secondtoText() => seconds <= 1 ? 'Second' : 'Seconds';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stopwatch Experiment')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '$seconds ${_secondtoText()}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: Text("Start"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 17, 0)),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: Text("Stop"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
  }

  void _onTick(Timer timer) {
    if (mounted) {
      setState(() {
        seconds++;
      });
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
