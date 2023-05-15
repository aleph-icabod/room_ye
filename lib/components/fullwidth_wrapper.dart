import 'package:flutter/material.dart';
import 'package:room_ye/config/constants.dart';

class FullWidthWrapper extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;

  const FullWidthWrapper({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: SizedBox(
        height: UIConstants.textFieldHeight,
        width: UIConstants.textFieldWidth,
        child: child,
      ),
    );
  }
}
