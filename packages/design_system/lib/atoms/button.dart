import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.label, this.onPressed});
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => FilledButton(
    onPressed: onPressed,
    style: FilledButton.styleFrom(
      backgroundColor: ComponentTokens.buttonComponentPrimaryBackground,
      foregroundColor: ComponentTokens.buttonComponentPrimaryForeground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ComponentTokens.buttonComponentPrimaryRadius)),
    ),
    child: Text(label),
  );
}
