import 'package:basics/presentation/counter/widgets/customize_floating_action_button.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonsForCounter extends StatelessWidget {
  final FBCallback fbCallback;
  final int counter;
  const FloatingActionButtonsForCounter(
      {super.key, required this.counter, required this.fbCallback});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomizeFloatingActionButton(
          color: Colors.red,
          icon: Icons.remove,
          setCounter: () {
            int tempCounter = counter;
            tempCounter -= 1;
            debugPrint(tempCounter.toString());
            fbCallback(tempCounter);
          },
        ),
        CustomizeFloatingActionButton(
          color: Colors.green,
          icon: Icons.add,
          setCounter: () {
            int tempCounter = counter;
            tempCounter += 1;
            debugPrint(tempCounter.toString());
            fbCallback(tempCounter);
          },
        ),
      ],
    );
  }
}

typedef FBCallback = void Function(int counter);
