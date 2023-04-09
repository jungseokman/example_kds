import 'package:example_kds/common/theme.dart';
import 'package:example_kds/screens/main/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const KdsApp());
}

class KdsApp extends StatelessWidget {
  const KdsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      home: const MainPage(),
    );
  }
}
