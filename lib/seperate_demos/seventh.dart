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
                const ContainerMediaQuery(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.amber,
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
                      return Center(
                        child: Container(
                          height: constraints.maxHeight / 2,
                          width: constraints.maxWidth / 2,
                          color: Colors.blue,
                          child: const Center(
                            child: Text("Column 5"),
                          ),
                        ),
                      );
                    },
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

class ContainerMediaQuery extends StatelessWidget {
  const ContainerMediaQuery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width,
      color: Colors.amber,
      child: const Center(
        child: Text("Column 4"),
      ),
    );
  }
}
