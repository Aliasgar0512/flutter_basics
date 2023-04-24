import 'package:flutter/material.dart';

/*
 * Basically in state management pattern we control UI from outside 
 * which mean UI will not hold any logic and that's when this type of class
 * comes in a picture.
 * 
 * In this type of class we will write the desired code for that particular 
 * state and then we will access this class's members from UI which will have updated 
 * data which we will also get it from UI.
 *
 */

//!
/*
  TODO : ChangeNotifier
 * 
 * - in simple term it is used to give widgets notifications when there's 
 *  any changes.
 * 
 *  
 */

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = false;

  void toggleTheme() {
    isDarkModeOn = !isDarkModeOn;

    //!
    /*
      TODO : notifyListeners()
     *
     * - it is used when any object is changed to notify any clients that 
     *   object may have changed.
     *  
     * - that means in out case everyone that listens to [ThemeService] for 
     *    changes will get the information or get notified of changes and then 
     *    UI will be updated as widgets will also be notified of the changes 
     *    through clients.
     * 
     */
    notifyListeners();
  }
}
