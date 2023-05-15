import 'package:flutter/material.dart';
import 'package:room_ye/components/fullwidth_wrapper.dart';
import 'package:room_ye/config/constants.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData? icon;

  final InputDecoration? decoration;
  final EdgeInsets? padding;

  const TextInput(
      {super.key,
      required this.controller,
      required this.label,
      this.icon,
      this.decoration,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return FullWidthWrapper(
      padding: padding,
      child: TextField(
        decoration: decoration ?? createInputDecoration(context, label, icon),
        controller: controller,
      ),
    );
  }

  InputDecoration createInputDecoration(
      BuildContext context, String text, IconData? icon) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      filled: true,
      fillColor: Colors.white,
      prefixIcon: icon != null ? Icon(icon) : null,
      contentPadding: const EdgeInsets.all(20),
      hintText: text,
      hintStyle: TextStyle(
        color: Theme.of(context).colorScheme.primary,
        fontSize: 20,
      ),
    );
  }
}
