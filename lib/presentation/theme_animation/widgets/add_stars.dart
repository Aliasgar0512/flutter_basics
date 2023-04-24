import 'package:flutter/material.dart';

import '../components/star_light.dart';

class AddStars extends StatelessWidget {
  final bool isDarkModeOn;
  const AddStars({super.key, required this.isDarkModeOn});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        StarLight(
          isDarkModeOn: isDarkModeOn,
          top: 100,
          right: 200,
        ),
        StarLight(
          isDarkModeOn: isDarkModeOn,
          top: 150,
          left: 50,
        ),
        StarLight(
          isDarkModeOn: isDarkModeOn,
          top: 70,
          left: 30,
        ),
        StarLight(
          isDarkModeOn: isDarkModeOn,
          top: 50,
          left: 90,
        ),
        StarLight(
          isDarkModeOn: isDarkModeOn,
          top: 70,
          right: 70,
        ),
        StarLight(
          isDarkModeOn: isDarkModeOn,
          top: 50,
          right: 30,
        ),
      ],
    );
  }
}
