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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: Container(
          color: Colors.amber,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.red,
                /*
                  TODO: Padding
                 * - it creates a space around the child widget
                 */
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Column 1        ",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 150,
              ),
              const Text(
                "Column 2",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Column 3"),
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
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
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
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 150,
                width: 150,
                /*
                  TODO: CircleAvatar
                 *  
                 * - show image in rounded manner
                 * - in this we use 'backgroundImage' attribute which takes
                 *   [ImageProvider] class as type for value and in here we 
                 *    pass'NetworkImage' a class representation of Image.network 
                 *    widget which takes image string url as 
                 *    parameter.
                 * 
                 */
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images3.alphacoders.com/695/695428.jpg'),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('hello'),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
