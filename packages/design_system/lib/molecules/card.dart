import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class AppCard extends StatelessWidget {
  const AppCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => Card(
    color: ComponentTokens.cardComponentBackground,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ComponentTokens.cardComponentRadius)),
    child: Padding(
      padding: EdgeInsets.all(ComponentTokens.cardComponentContentPadding),
      child: child,
    ),
  );
}
