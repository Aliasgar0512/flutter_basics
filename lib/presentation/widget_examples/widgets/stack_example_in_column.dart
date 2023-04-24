import 'package:flutter/material.dart';

class StackExampleInColumn extends StatelessWidget {
  const StackExampleInColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //!
    /*
                TODO: Stack
               *
               * - is used when we want to display widgets on top of each other 
               *    or in that manner as Stack works just like its name that is to 
               *    stack one item in top of other.
               * 
               * - we can use [Positioned] and [Align] widgets to place 
               *    any widget in different directions.
               *    
               */
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: 150,
          //!
          /*
                  TODO : Show Images
                 *
                 * 
                 * - first you have to create a folder in project where we will
                 *   store our images, in this case the folder is assets.
                 * 
                 * - then in (pubspec.yml) you have to uncomment the certain
                 *    code which is there for assets and To load resources from 
                 *    your folder ,you need to add them to your (pubspec.yml).
                 * 
                 *   
                 ! Note = Either the [width] and [height] arguments should be
                 !        specified, or the widget should be placed in a 
                 !        context that sets tight layout constraints.  
                 !        Otherwise, the image dimensions will change as 
                 !        the image is loaded, which will result in 
                 !        ugly layout changes
                  
                  TODO: Image.asset
                 * - can display the image from given path from assets.
                 * - (fit) can be used to define the way to display
                 *    image.
                 * 
                 TODO: Image.network
                 * 
                 * - can show image from internet by given url.
                 * - with the help of (fit) we can define the a way to display
                 *   image.
                 */
          child: Image.asset(
            fit: BoxFit.fill,
            'assets/madara1.jpg',
          ),
        ),
        //!
        /*
                    TODO : Positioned
                   * 
                   * - to place widgets at any position by providing pixels
                   *    in numbers.
                   *   
                   */
        const Positioned(
          top: 180,
          left: 90,
          child: Text(
            'Madara Uchiha',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
