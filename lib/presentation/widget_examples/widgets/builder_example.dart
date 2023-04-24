import 'package:flutter/material.dart';

class BuilderExample extends StatelessWidget {
  const BuilderExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
    return Builder(
      builder: (builderContext) {
        return Container(
          /*
            TODO MediaQuery 
          * - is to have a responsive layout depending on screen 
          *    size
          *
          * */
          height: MediaQuery.of(builderContext).size.height / 20,
          width: MediaQuery.of(builderContext).size.width,
          color: Colors.amber,
          child: const Center(
            child: Text("Column 6"),
          ),
        );
      },
    );
  }
}
