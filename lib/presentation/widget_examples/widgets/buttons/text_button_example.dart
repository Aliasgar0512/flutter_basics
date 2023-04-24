import 'package:flutter/material.dart';

class TextButtonExample extends StatelessWidget {
  const TextButtonExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //!
          /*
          TODO: TextButton
         *
         * - it will create a button which will have different 
         *    method for diff events.
         * 
         * - in [child] attribute we can customized it,
         *    by default we have specify height and width as per our 
         *    requirement.
         * 
         * - it also has[style] by default which we can use to have
         *    basic style template for out button, with [style] we can also 
         *    modify different property like [backgroundColor] and many more.
         * 
         */
        TextButton(
          onLongPress: () {
            debugPrint('long yellow');
          },
          onPressed: () => debugPrint('hello'),
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            child: const Center(
              child: Text(
                'TextButton',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        TextButton(
          //*
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => Colors.black,
            ),
          ),
          onLongPress: () {
            debugPrint('long yellow');
          },
          onPressed: () => debugPrint('hello'),
          child: const Text('Second Button'),
        ),
      ],
    );
  }
}
