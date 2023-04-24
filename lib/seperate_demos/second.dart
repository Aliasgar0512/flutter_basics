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
          /*
          TODO : Column
          * - used when we want to show items in vertical manner
          * - cannot be scrolled
          * - should be only used when you have more than one children

          * - the height of it will be as big as possible, if not specified or 
          *   affected by other attribute,
          
          * - in column mainAxis would be vertical as column works 
          *   in vertical manner

          * - we can change its height using 'mainAxisSize' attribute,
          *   and it is the only attribute to configure it size as column 
          *  works only vertically we can only manipulate column by its height.

          * - 'mainAxisAlignment' can be used to align children in vertical
          *   manner

          * - it's width will be the max size of its biggest child
          *   if not specified or affected by other attribute
          
          * - in column crossAxis would be the horizontal as column works
          *   in vertical manner

          * - 'crossAxisAlignment' can be used to align its children in
          *   horizontal way 

          */

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
              /*
              TODO: Sized Box
               * - it is used when we want to have a fixed size container for 
               *   widgets.
               * 
               * - can used as placeholder in between elements
               */
              const SizedBox(
                height: 20,
                width: 150,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Column 2",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Column 3"),
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
