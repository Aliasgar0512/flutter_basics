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
          color: Colors.white,
          /*
            TODO:SingleChildScrollView
           * 
           * - to scroll
           * - only active id space is not enough
           * - 'physics' attribute can be used for changing the scroll end
           *    animation/physic for android/ios.
           * 
           ! when using [ScrollSingleChildScrollViewView] we cannot use certain 
           ! types of widgets like [Expanded] and [Flexible] which are dynamic
           ! widgets because  [SingleChildScrollView] has unlimited space 
           ! and if we put [Expanded] in that basically it will take the all
           ! space it gets and in the end you will have infinite/bottomless 
           ! scroll.
           */
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Column 1",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Column 2",
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Column 3"),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        fit: BoxFit.fill,
                        'assets/madara1.jpg',
                      ),
                    ),
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
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 150,
                  width: 150,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images3.alphacoders.com/695/695428.jpg'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                  child: const Center(
                    child: Text("Column 4"),
                  ),
                ),
              ],
            ),
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
