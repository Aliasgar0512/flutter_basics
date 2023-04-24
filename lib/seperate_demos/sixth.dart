import 'package:basics/seperate_demos/seventh.dart';
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

                /*
                  TODO:Builder
                 * 
                 * -  so as the [context] passed in [MediaQuery]
                 *    was not available in this build(),
                 *    so as we can get [context] from the 
                 *    build() what we can do here is that we can extract 
                 *    the container which will have new Build() or we can 
                 *    use [Builder] which is basically gives us a new 'context' 
                 *    from the existing context of our build() to use.
                 */
                const BuilderExampleLocal(),
                // extracting widget to get context from its own build()
                const ContainerMediaQuery()
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

class BuilderExampleLocal extends StatelessWidget {
  const BuilderExampleLocal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Builder(
      builder: (builderContext) {
        return Container(
          height: MediaQuery.of(builderContext).size.height / 8,
          /*
            TODO MediaQuery 
          * - is to have a responsive layout depending on screen 
          *    size
          *
          * */

          width: MediaQuery.of(builderContext).size.width,
          color: Colors.amber,
          child: const Center(
            child: Text("Column 4"),
          ),
        );
      },
    );
  }
}


