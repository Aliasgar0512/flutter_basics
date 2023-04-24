import 'package:basics/presentation/theme_animation/components/sun_shine.dart';
import 'package:flutter/material.dart';

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return SunShine(
      radius: 160,
      child: SunShine(
        radius: 120,
        child: SunShine(
          radius: 80,
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0XDDFC554F),
                  Color(0XDDFFF79E),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
