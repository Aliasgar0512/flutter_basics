import 'package:basics/application/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/set_up_theme_ayout.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('theme'),
      ),
      body: Consumer<ThemeService>(
        builder: (context, themeService, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                // elevation: 20,
                child: SetUpThemeLayout(themeService: themeService),
              ),
            ),
          );
        },
      ),
    );
  }
}
