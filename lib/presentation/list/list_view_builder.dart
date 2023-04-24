import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      //!
      /*
        TODO :ListView.builder
        
        * to create dynamic ListView.
        
        * Its main advantage is that it will only render the items which is 
        * currently on the screen and not the all of the data and that's why its 
        * preferable to use it when we have huge amount of data to show.
         
        * so lets say we have 500+ items as a data and we are displaying them
        * in ListView, So on the screen we are displaying 5 data and then we 
        * have to scroll so , what happens here is that the ListView will
        * only render 5 data at first and when scrolling it will start to 
        * render the data which is currently visible which means
        * 2 to 6 and all other data wont be rendered.
        
        ! Note: this is only available with the dynamic ListViews and not with 
        !       the simple ListView.
       */
      body: ListView.builder(
        itemCount: 20,
        //!
        /* 
        TODO:itemBuilder
        * itemBuilder creates each item for listView from given widgets and
        * it will be repeated till the [itemCount] value or if not given then
        * infinitely.
        */
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text(
                index.toString(),
              ),
            ),
          );
        },
      ),
    );
  }
}
