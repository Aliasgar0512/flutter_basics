import 'package:flutter/material.dart';

/*
TODO: StatefulWidget
* Stateful Widget is used when there is changes in data we want to show
* happens in UI.
*
* just like in this example we are working with switch which has two state
* like one is on/true and off/false and we are turning it on and off on
* onChange().
*
* Now stateful widget is bad for performance when we are working with
* big application and the reason is when if wrap all the file with
* [StatefulWidget] and when we call setState() the flutter will
* have to rerender all (UI)the components inside which is not const now
* imagine we are only changing 3 letters dynamically and we have to rerender
* all the other non-cost components/widgets which are in the same screen just
* for that 3 letters.
*
**/
class SwitchExample extends StatefulWidget {
  const SwitchExample({
    super.key,
  });

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool switchState = true;
  @override
  Widget build(BuildContext context) {
    //!
    /*
     TODO:Switch 
     * 
     * - its a like switch from android which has two 
     *    state on/off
     * - it has many attributes to work with for styling and many more.
     * 
     */
    return Switch(
      value: switchState,
      onChanged: (value) {
        //* value is the value of switch's state like true or false
        debugPrint(value.toString());
        setState(() {
          switchState = value;
        });
        switchState = value;

        //*OR
        //!
        /*
         * this is basically calling after the changes are done while above code 
         * is when the changes happens
         * switchState = value;
         * setState(() {});
         */
      },
    );
  }
}
