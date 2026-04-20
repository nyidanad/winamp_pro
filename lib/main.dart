import 'package:flutter/material.dart';
import 'package:winamp_pro/core/configs/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Winamp Pro Demo',
      theme: AppTheme.lightTheme,
      home: Container()
    );
  }
}
