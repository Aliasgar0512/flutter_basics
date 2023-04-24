import 'package:basics/presentation/theme_animation/components/moon.dart';
import 'package:flutter/material.dart';

class AddMoon extends StatelessWidget {
  final bool isDarkModeOn;
  const AddMoon({
    super.key,
    required this.isDarkModeOn,
  });

  @override
  Widget build(BuildContext context) {
    /*
      TODO :AnimatedPositioned
     *
     * - This will animate the change in position, like in this case 
     *    we are moving our moon to extreme right so that it can't be seen 
     *    so at that time the animation of moving will happen with this widget. 
     * 
     * [duration] is to control speed in animation.
     * 
     * - so here what we are doing is we are changing position of out moon 
     *    to extreme right when its light mode and from there we will distance 
     *    moon from right when its dark mode so it will look like the moon 
     *    has rise from right when the sun set, and we are also changing it's
     *    position from top so it will look like curve animation when use 
     *    switches from light to dark.
     *    
     * 
     */

    return AnimatedPositioned(
      top: isDarkModeOn ? 100 : 130,
      right: isDarkModeOn ? 100 : -40,
      duration: const Duration(milliseconds: 300),
      //* hiding the moon when the theme is light.
      child: AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: isDarkModeOn ? 1 : 0,
          child: const Moon()),
    );
  }
}
