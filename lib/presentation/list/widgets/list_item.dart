import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;
  final int index;
  const ListItem({super.key, required this.title, required this.index});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    //* we can also add [Container] above [ListTile] to use more helpful
    //* attributes.
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightBlue,
      ),
      //!
      /*
       TODO :ListTile
      * so list tile can be used to display basic info , we can take it
      * as a Container too but with lesser attributes and more ListView
      * item focused Widget.
      * Basically its for creating an Item/Items.
      */
      child: ListTile(
        title: Text(widget.title),
        subtitle: Text('Item number ${widget.index + 1}'),
        leading: Checkbox(
          value: isChecked,
          onChanged: (value) {
            debugPrint(value.toString());
            isChecked = value ?? false;
            setState(() {});
          },
        ),
      ),
    );
  }
}
