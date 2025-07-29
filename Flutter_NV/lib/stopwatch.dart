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
  bool isTicking = false;
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: isTicking ? null : _starttimer,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: const Text("Start"),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: isTicking ? _stoptimer : null,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: const Text("Stop"),
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
  }

  void _starttimer() {
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
    setState(() {
      isTicking = true;
      seconds = 0;
    });
  }

  void _stoptimer() {
    timer.cancel();
    setState(() {
      isTicking = false;
    });
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
