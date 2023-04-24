import 'package:flutter/material.dart';

class FirstColumnChild extends StatelessWidget {
  const FirstColumnChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
 /*
            TODO Container
             * - a basic widget
             * - work just like its name which is can create a container
             *   by the dive size in height and width
             * - container is use to hold widgets in it
             * - we can use boxDecoration to change its appearance 
             * - note: when we use boxDecoration we have use color attribute
             *   inside it cause the color attribute of Container wont be applied
             *   if we have used boxDecoration.
            */
    return Container(
      color: Colors.red,
      /*
      TODO: Padding
     * - it creates a space around the child widget
     */
      child: const Padding(
        padding: EdgeInsets.all(8.0),
       
        child: Text(
          "Column 1",
        ),
      ),
    );
  }
}
