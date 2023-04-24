import 'package:basics/presentation/widget_examples/widget_example_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.cyan,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const WidgetExampleScreen(),
    );
  }
}

class ContainerMediaQuery extends StatelessWidget {
  const ContainerMediaQuery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width,
      color: Colors.amber,
      child: const Center(
        child: Text("Column 4"),
      ),
    );
  }
}
