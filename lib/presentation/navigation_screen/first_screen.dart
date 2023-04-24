import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: TextButton(
          child: const Text('Back'),
          onPressed: () {
            //!
            /*
             TODO : Navigator.pop
             * 
             * - it will pop/remove the most top screen from the Navigator
             * stack.
             * 
             * - it is basically used when we want to remove/pop the latest 
             *    added element in the stack.
             * 
             * 
             */
            //! pop will also work with namedRoutes because it is just basically
            //! removing the latest element from stack.

            // Navigator.pop(context);
            // or

            //!
            /*
             TODO: popUntil
             * 
             * - used when we want to pop multiple elements at the same time.
             * 
             * - for example if we want to move screen 2 from screen 6
             *   without adding new elements which is basically a very bad stack
             *   management, so at that time we can use popUntil.  
             * 
             * - this will pop until the base/root route which in our case
             *  is the '/homescreen' or RootNavigationBar().
            */

            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
      ),
    );
  }
}
