import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  //* so this is how we define function as a field in a class so that we can
  //* use it as parameter
  final Function() onTap;
  //* [IconData] is basically the icon/custom icon and 
  //* not the [Icon] widget
  final IconData customIcon;
  final Color iconColor;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.customIcon,
    required this.iconColor,
  });
  @override
  Widget build(BuildContext context) {
    //!
    /*
      TODO :Material
     * 
     * - we can take [Material] as a black canvas which is used to add splashes
     *    and it is recommended to use[Material] as ancestor of 
     *    [Ink], [InkWell] and [InkResponse].
     * 
     */
    return Material(
      //!
      /*
       TODO: Ink 
       * 
       * - Paints a decoration (which can be a simple color) on a [Material].
       * 
       * - A convenience widget for drawing images and other decorations on 
       *   [Material] widgets, so that [InkWell] and [InkResponse] splashes 
       *   will render over them.
       * 
       * - Basically its for styling.
       * 
       */
      child: Ink(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          //!
          /*
            TODO: gradient attribute
           * 
           * - with this we can add a list of color we want to have in a widget.
           */
          //!
          /*
           TODO : LinearGradient 
           * - [LinearGradient] will add gradient in linear manner and which
           *   will add colors in chronological order.
           *
           * - with [begin] and [end] attributes we can define 
           *    a direction which want to show our gradient.
           *    
           * 
           */
          gradient: LinearGradient(
            //* here we are defining when the
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.yellow,
              Colors.purple,
            ],
          ),
        ),
        //!
        /*
          TODO: InkWell
         * 
         * - A rectangular area of a [Material] that responds to touch.
         * - Must have an ancestor [Material] widget in which to cause 
         *    ink reactions.
         * 
         * - Basically its used to detect motions/events in [Material].
         */
        child: InkWell(
          //!
          /*
           * function passing as a value 
           * 
           * we can also use it like this
           * 'onTap: () => onTap()'
           * 
           */
          onTap: onTap,
          splashColor: Colors.red,
          customBorder: const CircleBorder(),
          child: Icon(
            customIcon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}

class CustomButtonGesture extends StatelessWidget {
  final Function() onClick;
  final String text;

  const CustomButtonGesture({
    super.key,
    required this.onClick,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    //!
    /*
      TODO: GestureDetector
     *
     * - Creates a widget that detects gestures.
     * 
     * - for listening for gestures without ink splashes.
     * 
     * - its used to detect any type of gesture/motion/event
     * 
     * - we can't style it like Int so no ripple effect here
     *  
     */
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.white,
              Colors.black,
            ],
          ),
        ),
        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
