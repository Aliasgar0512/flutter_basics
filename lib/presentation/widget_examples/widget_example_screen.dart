import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/components/custom_button.dart';
import 'package:basics/presentation/widget_examples/widgets/buttons/button_example.dart';
import 'package:basics/presentation/widget_examples/widgets/media_query_example.dart';
import 'package:basics/presentation/widget_examples/widgets/row_expanded_example.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../person/person.dart';
import 'widgets/builder_example.dart';
import 'widgets/first_column_child.dart';
import 'widgets/layout_builder_example.dart';
import 'widgets/second_column_child.dart';

class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        //!
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
          children: [
            const SizedBox(
              height: 20,
            ),
            const RowExpandedExample(),
            const SizedBox(
              height: 20,
            ),
            const FirstColumnChild(),
            //!
            /*
            TODO: Sized Box
             * - it is used when we want to have a fixed size container for 
             *   widgets.
             * 
             * - can used as placeholder in between elements
             */
            const SizedBox(
              height: 20,
            ),
            const SecondColumnChild(),
            const SizedBox(
              height: 20,
            ),
            // const StackExampleInColumn(),
            const Person(
                name: 'Madara Uchiha',
                age: '5000',
                country: 'Konoha Village',
                job: 'to get Stronger',
                imageUrl: 'assets/madara1.jpg',
                isFromAssets: true),
            const SizedBox(
              height: 20,
            ),
            // const CircularAvatarExample(),
            const Person(
                name: 'Madara Uchiha',
                age: '5000',
                country: 'Konoha Village',
                job: 'to get Stronger',
                imageUrl: 'https://images3.alphacoders.com/695/695428.jpg',
                isFromAssets: false),
            const SizedBox(
              height: 20,
            ),
            //* extracting widget to get context from its own build()
            const MediaQueryExample(),
            const SizedBox(
              height: 20,
            ),
            const BuilderExample(),
            const SizedBox(
              height: 20,
            ),
            const LayoutBuilderExample(),
            const SizedBox(
              height: 20,
            ),
            const ButtonExamples(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () {
                //!
                /*
                 TODO : Navigator.push 
                 * 
                 * - it will push the given screen in Navigator stack.
                 * 
                 */
                //! without Named Routes
                /**
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FirstScreen();
                    },
                  ),
                );
                 */

                Navigator.pushNamed(context, '/firstScreen');
              },
              customIcon: Icons.home,
              iconColor: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonGesture(
              onClick: () {
                //! without Named Routes
                /** 
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SecondScreen();
                    },
                  ),
                );
                */
                //!
                /*
                TODO: pushNamed
                 * 
                 * - used when we want to push an element with Named Routes 
                 *    in navigator stack.
                 * 
                */
                Navigator.pushNamed(context, '/secondScreen');
              },
              text: 'Gesture',
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*
           * this will give us the object reference of ThemeService so we can 
           * access the members and perform changes.
           * 
           * - so in this case we will use 'Provider.of<ThemeService>'
           *   to access 'ThemeService' instance to access 'toggleTheme();
           *   which is basically have the logic of changing the theme.
           * 
           ! Note: for more details read 'TODO' of [Provider.of] in
           !       main.dart file
           */
          Provider.of<ThemeService>(context, listen: false).toggleTheme();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
