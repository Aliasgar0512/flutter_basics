import 'package:flutter/material.dart';

class CircularAvatarExample extends StatelessWidget {
  const CircularAvatarExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      width: 100,
      //!
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
        backgroundImage:
            NetworkImage('https://images3.alphacoders.com/695/695428.jpg'),
      ),
    );
  }
}
