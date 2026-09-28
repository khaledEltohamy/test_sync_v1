import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

void main() => runApp(const GalaxyExampleApp());

class GalaxyExampleApp extends StatelessWidget {
  const GalaxyExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: AppTheme.light(),
    home: const Scaffold(body: Center(child: AppText('Galaxy generated project'))),
  );
}
