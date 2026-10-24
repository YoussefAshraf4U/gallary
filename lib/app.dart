import 'package:flutter/material.dart';

import 'screens/gallery_screen.dart';
import 'theme/app_theme.dart';

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Gallery',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const GalleryScreen(),
    );
  }
}
