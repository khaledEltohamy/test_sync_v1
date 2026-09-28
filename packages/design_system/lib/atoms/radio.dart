import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class AppRadio extends StatelessWidget {
  const AppRadio({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
    color: ComponentTokens.radioComponentClearBackground,
    
    
    child: child,
  );
}
