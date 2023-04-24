import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/navigation_screen/first_screen.dart';
import 'package:basics/presentation/navigation_screen/second_screen.dart';
import 'package:basics/root_bottom_navigation.dart';
import 'package:basics/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  //!
  /* 
     * - we are wrapping MyApp() widget with Provider
     *    because we want to manage state of theme, and 
     *    this is the main root of app and also where
     *    we can customize our app's theme and that's why 
     *    we have to add provide to the main root so the state
     *    can be accessed by the whole application.
     *  
     */
  runApp(
    //!
    /*
        TODO : ChangeNotifierProvider
     * - Listens to a [ChangeNotifier], expose it to its descendants and rebuilds
     *    dependents whenever [ChangeNotifier.notifyListeners] is called.
     *
     * - basically this will act as a client and will provide info to the 
     *   widget tree whenever data changes.
     * 
     */
    ChangeNotifierProvider(
      // * 'create' basically creates [ChangeNotifier]'s instance.
      create: (context) => ThemeService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //!
    /* 
      TODO MaterialApp basics
     * - uses the material design/theme
     * - can define supported languages
     * - can define different routes for navigation
     *
     * - MaterialApp is the root of widget tree as it gives basic
     *   layout and is from flutter library.
     * - there are others App too but all are based from MaterialApp,
     *   it is also depends on you requirements to when you which App for
     *    root
     *  */

    //!
    /*
      TODO : Consumer
     *
     * ---- shitty definition
     * - to use something that is provided we need to wrap out
     *    our parent widget which will be the head of tree and root of our 
     *    widget tree in our case in to [Consumer]
     * 
     * ---- proper definition from DOCs
     * - Obtains [Provider<T>] from its ancestors and passes its value to 
     *   [builder].
     * 
     *   ==> which means it will get provider<ThemeService> in our case and 
     *        will pass provider<ThemeService>'s value to
     *        its [builder] attribute.
     * 
     * - The [Consumer] widget doesn't do any fancy work. 
     *    It just calls [Provider.of] in a new widget, 
     *    and delegates its `build` implementation to [builder].
     * 
     * 
     * -- it's one of the two main purpose is..
     * 
     ?  - It allows obtaining a value from a provider when we don't have a
     ?     [BuildContext] that is a descendant of said provider, and therefore
     ?     cannot use [Provider.of].
     * 
     *   ==> its just simpler version of above statement, and in simpler term
     *        [Consumer] will call [Provider.of] which is used in creation of 
     *        an [Provider] object.
     * 
     *       -- in our case it will create an object of [ThemeService]
     *          by calling [Provider.of].
     * 
     * 
     * --- now before continuing we have understand what [Provider.of] do.
          ///
              TODO : Provider.of
          /// 
          /// - so what [Provider.of] do is, it Obtains the nearest 
          ///   [Provider<T>] up its widget tree and returns its value.
          /// 
          /// - in simpler terms it will return the nearest parent's 
          ///   [Provider<T>].
          ///   
     *        now [Provider.of] requires [BuildContext] which is from 
     *        the descendant of the said [Provider]. 
     *        now what happens when we don't have a
     *        [BuildContext] that is a descendant of said provider?
     *    
     *    --  This scenario typically happens when the widget that creates the 
     *        provider is also one of its consumers, 
     *        like in the following example:
     * 
              /// @override
              /// Widget build(BuildContext context) {
              ///   return ChangeNotifierProvider(
              ///     create: (_) => ThemeService(),
              ///     child: Text(
              ///       Provider.of<ThemeService>(context).isDarkModeOn,
              ///     ),
              ///   );
              /// }
              
     *         This example will throw a [ProviderNotFoundException] 
     *         because [Provider.of] is called with a [BuildContext] that is an 
     *         ancestor of the provider, because firstly, here we are creating 
     *         a [provider] for the widget which is the ancestor of the and
     *         its widget tree that the provider will pass its data to, and that 
     *         is why when [Provider.of] will be called from [BuildContext] of 
     *         the root widget, it won't be able to get [Provider] because 
     *         either the root widget is the root widget of all the widget tree
     *         or as we are declaring provider in this widget itself 
     *         there wont be any nearest parent widget with similar [Provider],
     *         So that's why we will get [ProviderNotFoundException].
     * 
     * 
     * - Now for solution, Instead, here we can use the [Consumer] widget, 
     *   that will call [Provider.of] with its own [BuildContext], 
     * - so basically what it will do is like said above that first it will 
     *   obtain [Provider<T>] from its ancestors and then passes [Provider.of]'s 
     *   return value to its own [builder] attribute which basically is a 
     *   delegation of its own 'build()' implementation and provides us with
     *   (context,(object of class with provider reference),child).
     *    And now we just have to use that class's object to access members which
     *    holds the latest data to update the UI.
     *   
     * 
     *        
     */

    //!
    /* 
      * here we are passing the ThemeService because we want to get the 
      * object reference of ThemeService with Provider so we can listen it and
      * also access the members of that class which will have the changed value
      * which we will assign to UI part we want to update whenever any update
      * happens
      */
    return Consumer<ThemeService>(
      builder: (context, value, child) {
        return MaterialApp(
          //* set the theme for app
          // theme: ThemeData(
          //   //* appBarTheme and its color
          //   appBarTheme: const AppBarTheme(
          //     backgroundColor: Colors.cyan,
          //   ),
          // ),

          //* setting the theme on basis of the latest value of 'isDarkModeOn'
          themeMode: value.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          debugShowCheckedModeBanner:
              false, //* for removing the debug tag in app
          home: const RootBottomNavigation(),
          //!
          /*
          TODO: routes
          * 
          * - used for Named Routes.
          * 
          * - in here we will write the path for the routes as string which we will
          *    used afterward everywhere to navigate between screens.
          * 
          * - we can also define nested routes too like '/home/feed/abc'.
          * 
          */

          routes: <String, WidgetBuilder>{
            '/homeScreen': (BuildContext context) =>
                const RootBottomNavigation(),
            '/firstScreen': (BuildContext context) => const FirstScreen(),
            '/secondScreen': (BuildContext context) => const SecondScreen(),
          },
        );
      },
    );
  }
}
