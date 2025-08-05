import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchExperiemnt extends StatefulWidget {
  const StopwatchExperiemnt({super.key});

  @override
  State<StopwatchExperiemnt> createState() => _StopwatchExperiemntState();
}

class _StopwatchExperiemntState extends State<StopwatchExperiemnt> {
  double seconds = 0;
  late Timer timer;
  bool isTicking = false;
  int millis = 0;
  final laps = <int>[];

  String _formatTime(int milliseconds) {
    final int totalSeconds = milliseconds ~/ 1000;
    final int minutes = totalSeconds ~/ 60;
    final int seconds = totalSeconds % 60;
    final int centiseconds = (milliseconds % 1000) ~/ 10;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}.${centiseconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stopwatch Experiment')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                _formatTime(millis),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          Expanded(child: controlPanel()),
          Expanded(child: _buildDisplay()),
        ],
      ),
    );
  }

  Row controlPanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: _lapClick,
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          child: const Text("Lap"),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: _resetTimer,
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          child: const Text("Reset"),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void _starttimer() {
    timer = Timer.periodic(const Duration(milliseconds: 100), _onTick);
    setState(() {
      isTicking = true;
    });
  }

  void _lapClick() {
    if (isTicking) {
      setState(() {
        laps.add(millis);
      });
    }
  }

  void _stoptimer() {
    timer.cancel();
    setState(() {
      isTicking = false;
    });
  }

  void _resetTimer() {
    if (isTicking) {
      timer.cancel();
    }
    setState(() {
      isTicking = false;
      millis = 0;
      seconds = 0;
      laps.clear();
    });
  }

  void _onTick(Timer timer) {
    if (mounted) {
      setState(() {
        millis += 100;
        seconds = millis / 1000;
      });
    }
  }

  Widget _buildDisplay() {
    return ListView.builder(
      itemCount: laps.length,
      itemBuilder: (context, index) {
        final lapTime = _formatTime(laps[index]);
        return ListTile(
          leading: const Icon(Icons.timer),
          title: Text('Lap ${index + 1}: $lapTime'),
        );
      },
    );
  }

  @override
  void dispose() {
    if (isTicking) timer.cancel();
    super.dispose();
  }
}
