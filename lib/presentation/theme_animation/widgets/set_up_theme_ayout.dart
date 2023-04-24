import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/theme_animation/widgets/add_sun.dart';
import 'package:flutter/material.dart';

import 'add_moon.dart';
import 'add_stars.dart';
import 'theme_controller_layout.dart';

class SetUpThemeLayout extends StatelessWidget {
  final ThemeService themeService;
  const SetUpThemeLayout({
    super.key,
    required this.themeService,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: themeService.isDarkModeOn
                //* opacity added transparency.
                ? Colors.black.withOpacity(0.8)
                : Colors.grey,
            offset: const Offset(0, 5),
            blurRadius: 10,
            spreadRadius: 3,
          )
        ],
        gradient: setUpColorsForThemes(),
      ),
      child: Stack(
        children: [
          /*
           TODO :Animated[Widget] 
           * 
           * - In Flutter we can add animation with very simple way which is to 
           *   use the Animated[Widget]s, which are just simple widgets we use 
           *    daily but with additional functionality of animation.
           * 
           *   For example : Padding has AnimatedPadding
           *                 Positioned has AnimatedPositioned
           * 
           * - in Animated[Widget]s we can find all the basic attribute [Widget]
           *  provides and in addition to that they provide animation on their
           *  main attribute.
           * 
           *  for Example : AnimatedPadding will animate the changes in padding.
           *              :AnimatedPositioned will add animation when the 
           *                  position of widget has changed.
           *    
           * 
           */

          AddStars(isDarkModeOn: themeService.isDarkModeOn),
          AddMoon(isDarkModeOn: themeService.isDarkModeOn),
          AddSun(isDarkModeOn: themeService.isDarkModeOn),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 225,
              width: double.infinity,
              decoration: BoxDecoration(
                color:
                    themeService.isDarkModeOn ? Colors.grey[800] : Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: ThemeControllerLayout(themeService: themeService),
            ),
          ),
        ],
      ),
    );
  }

  LinearGradient setUpColorsForThemes() {
    return LinearGradient(
      colors: themeService.isDarkModeOn
          ? const [
              Color(0xFF94A9FF),
              Color(0xFF6B66CC),
              Color(0xFF200F75),
            ]
          : const [
              Color(0xDDFFFA66),
              Color(0xDDFFA057),
              Color(0xDD940B99),
            ],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
  }
}
