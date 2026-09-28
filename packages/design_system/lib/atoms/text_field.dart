import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key, this.controller, this.label, this.obscureText = false});
  final TextEditingController? controller;
  final String? label;
  final bool obscureText;

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    obscureText: obscureText,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: ComponentTokens.textfieldComponentText),
      contentPadding: EdgeInsets.all(ComponentTokens.textfieldComponentPadding),
      filled: true, fillColor: ComponentTokens.textfieldComponentBackgroundDefault,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(ComponentTokens.textfieldComponentRadius), borderSide: BorderSide(color: ComponentTokens.textfieldComponentBorderDefault)),
    ),
  );
}
