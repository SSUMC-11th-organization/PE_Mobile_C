import 'package:flutter/material.dart';
import 'package:movielog/theme/app_theme.dart';
import 'package:movielog/screen/start_screen.dart';
import 'package:movielog/screen/profile_screen.dart';

class MovieLogApp extends StatelessWidget {
  const MovieLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MovieLog',
      theme: AppTheme.light,
      // home: const StartScreen(),
      home: const ProfileScreen(),
    );
  }
}
