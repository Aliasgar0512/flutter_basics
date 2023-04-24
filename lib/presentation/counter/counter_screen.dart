import 'package:basics/presentation/counter/floating_action_buttons_for_counter.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AppBar',
        ),
      ),
      body: Center(
        child: Text(
          'Count : $_counter',
          style: TextStyle(
              fontSize: 30, color: _counter > 0 ? Colors.green : Colors.red),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: FloatingActionButtonsForCounter(
          counter: _counter,
          fbCallback: (counter) {
            debugPrint(counter.toString());
            setState(() {
              _counter = counter;
            },);
          },
        ),
      ),
    );
  }
}
