import 'package:flutter/material.dart';

class SecondColumnChild extends StatelessWidget {
  const SecondColumnChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //!
    /*
              TODO: Text
                * - use to display String 
                * - by default has it own styling but we can change it using 
                * - style attribute.
              */
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "Column 2",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
