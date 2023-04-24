import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      /**
       * TODO :ListView
       * 
       * * simple ListView with different useful attributes and works
       * * same like [singleChildScrollView].
       * * its also very convenient to use on some cases.
       * 
       * 
       */
      body: ListView(
        children: [
          Container(
            color: Colors.amber,
            height: 100,
          ),
          Container(
            color: Colors.green,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Container(
            color: Colors.pink,
            height: 100,
          ),
          Container(
            color: Colors.brown,
            height: 100,
          ), Container(
            color: Colors.amber,
            height: 100,
          ),
          Container(
            color: Colors.green,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Container(
            color: Colors.pink,
            height: 100,
          ),
          Container(
            color: Colors.brown,
            height: 100,
          ),
        ],
      ),
    );
  }
}
