import 'package:flutter/material.dart';

class RowExpandedExample extends StatelessWidget {
  const RowExpandedExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    //!
      /*
      TODO : Row
      * - used when we want to show items in Horizontal manner
      * - cannot be scrolled
      * - should be only used when you have more than one children

      * - the width of it will be as big as possible, if not specified or 
      *   affected by other attribute,
      
      * - in column mainAxis would be vertical as column works 
      *   in Horizontal manner

      * - we can change its width using 'mainAxisSize' attribute,
      *   and it is the only attribute to configure it's size as row 
      *  works only horizontally we can only manipulate row by its width.

      * - 'mainAxisAlignment' can be used to align children in horizontal
      *   manner

      * - it's height will be the max size of its biggest child
      *   if not specified or affected by other attribute
      
      * - in row crossAxis would be the vertical as row works
      *   in horizontal manner

      * - 'crossAxisAlignment' can be used to align its children in
      *   vertical way 

      */
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //!
          /*
             TODO : Flexible

             * - A widget that controls how a child of a [Row], [Column],
             *   or [Flex] flexes.
             * 
             * - Using a [Flexible] widget gives a child of a [Row],
             *   [Column], or [Flex] the flexibility to expand to fill the 
             *   available space in the main axis.
             * 
             * - we can define the amount of space it should take with
             *    [flex] attribute.
             * 
             * - Basically it will fill the available space which the widget
             *   can provide or has if needed.
             * 
             * - if we have multiple flexible widget in [row],[colum], we can 
             *   tell them how to relate with each other with the [flex]
             *   attribute.
             
             ! it will be created at last because fixed size widgets
             ! will be created first and dynamic ones after, so they 
             ! know how much space they have to work with.

             */
          Flexible(
            child: Container(
              color: Colors.blue,
              child: const Text(
                "Row 1 and this is going to be a long one to display Flexible usage",
                //* this is to limit the amount of lines it should take
                maxLines: 1,
                //* this is to show (...) at the end of large text which is to indicate
                //* that this text does not end here and have bigger length
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            "Row 2",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),

          //!
          /*
            TODO : Expanded

           * - is a special form of a Flexible widget(fit:FlexFit.tight)
           * 
           * - A widget that expands a child of a [Row], [Column], or [Flex]
           *   so that the child fills the available space.
           * 
           * - Using an [Expanded] widget makes a child of a [Row], 
           *   [Column], or [Flex] expand to fill the available space 
           *   along the main axis. If multiple children are expanded,
           *   the available space is divided among them according to 
           *   the [flex] factor.
           * 
           * - we can define the amount of space it should take with
           *    [flex] attribute.  
           *  
           * - basically it fills all the available space whether the 
           *   children use it or not.
           * 
            - if we have multiple flexible widget in [row],[colum], we can 
           *   tell them how to relate with each other with the [flex]
           *   attribute. 
           * 
           ! it will be created at last because fixed size widgets
           ! will be created first and dynamic ones after, so they 
           ! know how much space they have to work with 
           */
          const Expanded(
            child: Text(
              "Row 3 and this is Expanded ",
            ),
          ),
        ],
      ),
    );
  }
}
