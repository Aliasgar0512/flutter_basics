import 'package:basics/presentation/theme_animation/components/sun.dart';
import 'package:flutter/material.dart';

class AddSun extends StatelessWidget {
  final bool isDarkModeOn;
  const AddSun({
    super.key,
    required this.isDarkModeOn,
  });

  @override
  Widget build(BuildContext context) {
    /*
     TODO : AnimatedPadding
     * 
     * - this will animate the changes in padding, like in here
     *    we are using [AnimatedPadding] to hide our sun behind 
     *    a layout in stack. so what we are doing is that when the theme
     *    changes in dark mode we are adding padding to top which will move out 
     *    sun widget downwards in behind of the other layout, and the moving 
     *    will be animated at that time as we are using padding.
     * 
     *
     * 
     */
    return AnimatedPadding(
      duration: const Duration(milliseconds: 200),
      padding: EdgeInsets.only(top: isDarkModeOn ? 110 : 50),
      child: const Center(child: Sun()),
    );
  }
}
