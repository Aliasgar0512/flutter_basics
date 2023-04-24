import 'package:flutter/material.dart';

import 'icon_button_example.dart';
import 'switch_example.dart';
import 'text_button_example.dart';

class ButtonExamples extends StatelessWidget {
  const ButtonExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextButtonExample(),
        IconButtonExample(),
        SwitchExample(),
      ],
    );
  }
}
