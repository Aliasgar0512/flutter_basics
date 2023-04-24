import 'package:basics/presentation/theme_animation/components/stars.dart';
import 'package:flutter/material.dart';

class StarLight extends StatelessWidget {
  final double top;
  final double right;
  final double left;
  final bool isDarkModeOn;
  const StarLight(
      {super.key,
      required this.isDarkModeOn,
      required this.top,
      this.left = 0,
      this.right = 0});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right == 0 ? null : right,
      left: left == 0 ? null : left,
      //!
      /*
       TODO : AnimatedOpacity
       * 
       * - this will add animation when the opacity means the transparency
       *  is changed which means when we are showing and hiding our stars during
       *  light theme.
       * 
       * - so in here what we are doing is that we use change the theme to light 
       *  we are hiding our stars by making them transparent using opacity 
       *  and that's when [AnimatedOpacity] will animation in between showing 
       *  and hiding.
       * 
       */
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: isDarkModeOn ? 1 : 0,
        child: const Star(),
      ),
    );
  }
}
