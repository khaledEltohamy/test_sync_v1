// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
  });

  final bool value;
  final ValueChanged<bool?>? onChanged;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final checkbox = Checkbox(value: value, onChanged: onChanged);
    return label == null
        ? checkbox
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [checkbox, Text(label!)],
          );
  }
}
