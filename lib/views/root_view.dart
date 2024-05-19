import 'package:flutter/material.dart';
import './components/wallpaper_grid.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: const WallpaperGrid(),
        ),
      ),
    );
  }
}
