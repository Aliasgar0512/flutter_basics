import 'package:basics/application/theme_service.dart';
import 'package:flutter/material.dart';

class ThemeControllerLayout extends StatelessWidget {
  final ThemeService themeService;
  const ThemeControllerLayout({super.key, required this.themeService});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          themeService.isDarkModeOn ? 'Too Dark?' : 'Too Bright?',
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          themeService.isDarkModeOn ? 'Let the Sun Rise' : 'Let it be Night',
          style: const TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        Switch(
          value: themeService.isDarkModeOn,
          onChanged: (newValue) => themeService.toggleTheme(),
        ),
      ],
    );
  }
}
