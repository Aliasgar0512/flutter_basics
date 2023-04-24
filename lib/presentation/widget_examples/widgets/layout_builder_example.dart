import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 300,
      color: Colors.amber,
      //!
      /*
                  TODO:LayoutBuilder
                 * 
                 * - used when we want to create a layout depending on the size 
                 *    of the parent.
                 * 
                 * - has its own [context] and [constraints] in the [builder] 
                 *    function.
                 * 
                 * - uses [constraints] from the parent widget.
                 * 
                 * - if the parent size changes the [LayoutBuilder] will build 
                 *    the children depending on the new constraint.
                 * 
                 */
      child: LayoutBuilder(
        builder: (builderContext, constraints) {
          //!
          /* 
            TODO:Center
            * - center's its child to the middle of its parent */
          return Center(
            child: Container(
              height: constraints.maxHeight / 2,
              width: constraints.maxWidth / 2,
              color: Colors.blue,
              child: const Center(
                child: Text("Column 7"),
              ),
            ),
          );
        },
      ),
    );
  }
}
