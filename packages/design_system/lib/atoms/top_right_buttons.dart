import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class AppTopRightButtons extends StatelessWidget {
  const AppTopRightButtons({super.key, required this.label, this.onPressed});
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => FilledButton(
    onPressed: onPressed,
    style: FilledButton.styleFrom(
      backgroundColor: ComponentTokens.topRightButtonsComponentBackground,
      
      
    ),
    child: Text(label),
  );
}
