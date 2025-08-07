import 'package:flutter/material.dart';

class ConterState extends StatefulWidget {
  const ConterState({super.key});

  @override
  State<ConterState> createState() => _ConterStateState();
}

class _ConterStateState extends State<ConterState> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text('$_counter', style: Theme.of(context).textTheme.displayMedium),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrement,
                  child: const Text('Decrement'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(onPressed: _reset, child: const Text('Reset')),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _increment,
                  child: const Text('Increment'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
