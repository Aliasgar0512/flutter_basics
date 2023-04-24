import 'package:flutter/material.dart';

class IconButtonExample extends StatelessWidget {
  const IconButtonExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //!
      /*
          TODO: IconButton
         * 
         * - more towards image/icon oriented type
         * - it has many attributes to work with for styling and many more. 
         * 
         * 
         */
    return IconButton(
      onPressed: () {
        debugPrint("hello");
      },
      icon: const Icon(Icons.play_arrow),
    );
  }
}