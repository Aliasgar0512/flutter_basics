import 'package:flutter/material.dart';

class CustomizeFloatingActionButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Function() setCounter;
  const CustomizeFloatingActionButton({
    super.key,
    required this.color,
    required this.icon,
    required this.setCounter,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        debugPrint('fb');
        setCounter();
      },
      backgroundColor: color,
      child: Icon(icon),
    );
  }
}
