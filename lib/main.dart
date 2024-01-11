import 'package:flutter/material.dart';
import 'package:flutter_tiktok_practice/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone Exercice',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TikTok Clone Exercice'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}