import 'package:flutter/material.dart';
import 'package:room_ye/components/fullwidth_wrapper.dart';
import 'package:room_ye/config/constants.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData? icon;

  final InputDecoration? decoration;
  final EdgeInsets? padding;
  final TextStyle? style;

  const TextInput(
      {super.key,
      required this.controller,
      required this.label,
      this.icon,
      this.decoration,
      this.padding,
      this.style});

  @override
  Widget build(BuildContext context) {
    return FullWidthWrapper(
      padding: padding,
      child: TextField(
        decoration: decoration ?? createInputDecoration(context, label, icon),
        controller: controller,
        style: style?? TextStyle(
          color: Theme.of(context).colorScheme.inverseSurface,
        ),
      ),
    );
  }

  InputDecoration createInputDecoration(
      BuildContext context, String text, IconData? icon) {
    return InputDecoration(

      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      filled: true,
      fillColor: Theme.of(context).colorScheme.surface,
      prefixIcon: icon != null ? Icon(icon) : null,
      contentPadding: const EdgeInsets.all(20),
      hintText: text,
      prefixIconColor: Theme.of(context).colorScheme.inverseSurface,
      hintStyle: TextStyle(
        color: Theme.of(context).colorScheme.inverseSurface,
      ),
    );
  }
}
