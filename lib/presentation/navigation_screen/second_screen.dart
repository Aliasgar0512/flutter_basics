import 'package:basics/presentation/navigation_screen/first_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: TextButton(
          child: const Text('Go to First screen'),
          onPressed: () {
            /*
            TODO: Navigator.pushReplacement
             * 
             * - it will push the given screen by replacing the current
             *   screen in stack.
             * 
             */
            //! without Named Routes
            /*   Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const FirstScreen();
                },
              ),
            ); */

            //!
            /*
           TODO pushReplacementNamed 
           * 
           * - work just like pushReplacement but it replaces lots of
           *   boilerplate code with this.
           * 
           */
            Navigator.pushReplacementNamed(context, '/firstScreen');
          },
        ),
      ),
    );
  }
}
