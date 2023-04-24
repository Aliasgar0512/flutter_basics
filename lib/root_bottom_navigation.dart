import 'package:basics/presentation/counter/counter_screen.dart';
import 'package:basics/presentation/theme_animation/theme_animation_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/list/list_view_separated.dart';
import 'presentation/widget_examples/widget_example_screen.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    //!
    /*
      TODO Scaffold basics
     * - defines basic layout of your screen
     * - can define an AppBar, Drawer,BottomNavigationBar,FloatingActionButton
     */
    return Scaffold(
      //* Scaffold is like a page in our App
      /*
       TODO : IndexedStack
       * - basically a stack with indexed items
       */
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          WidgetExampleScreen(),
          ListViewSeparatedScreen(),
          CounterScreen(),
          ThemeAnimationScreen(),
        ],
      ),
      /*
       TODO:BottomNavigationBar 
       * - A material widget that's displayed at the bottom of an app for 
       *   selecting among a small number of views, typically between 
       *   three and five.
       * 
       * - generic BottomNavigationBar from Material library.
       * 
       * - Creates a bottom navigation bar which is typically used as a
       *    [Scaffold]'s [Scaffold.bottomNavigationBar] argument.
       * 
       */
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.amber,
        //* it is to apply our custom theme to [bottomNavigationBar].
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        selectedItemColor: Colors.pink,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          /*
           TODO: BottomNavigationBarItem
           * 
           * 
           * - An interactive button within [BottomNavigationBar].
           * - Creates an item that is used with [BottomNavigationBar.items].
           * 
           * - basically it is used with BottomNavigationBar and for its items.
           * 
           * 
           * 
           */
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'examples'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'counter'),
          BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: 'theme'),
        ],
      ),
    );
  }
}
