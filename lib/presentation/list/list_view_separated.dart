import 'package:basics/presentation/list/widgets/list_item.dart';
import 'package:flutter/material.dart';

class ListViewSeparatedScreen extends StatelessWidget {
  const ListViewSeparatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      'one',
      'two',
      'three',
      'four',
      'five',
      'six',
      'seven',
      'eight',
      'nine',
      'ten',
      'eleven'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      //!
      /*
        TODO :ListView.separated
       * 
       * to create a dynamic ListView with dynamic separator for each item.
       * 
       */
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: list.length,
          //!
          /*
            TODO:separatorBuilder
           *  it works just like [itemBuilder] and can be used to create
           *  custom separator for each item.
          */
          separatorBuilder: (context, index) {
            //* its return value is [Widget] so any widget is possible for
            //* separator.

            // return const Divider();
            //or

            // return const Icon(Icons.add);
            //or

            return const SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return ListItem(title: list[index], index: index);
          },
        ),
      ),
    );
  }
}
