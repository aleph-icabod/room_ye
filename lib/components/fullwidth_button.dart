import 'package:flutter/material.dart';
import 'package:room_ye/components/fullwidth_wrapper.dart';
import 'package:room_ye/config/constants.dart';

class FullWidthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

   ButtonStyle? style;

  FullWidthButton(
      {super.key,
      required this.onPressed,
      required this.child,
      ButtonStyle? customStyle}) {
    if(customStyle!=null){
      style=customStyle;
    }
  }

  @override
  Widget build(BuildContext context) {
    style ??= ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Colors.white,
    );

    return FullWidthWrapper(
      child: ElevatedButton(
        style: style,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
