import 'package:flutter/material.dart';

class WallpaperGrid extends StatelessWidget {
  const WallpaperGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: GridView.builder(
        itemCount: 100,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 24.0,
          mainAxisSpacing: 24.0,
        ),
        itemBuilder: (_, index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(
              image: NetworkImage(
                "https://picsum.photos/seed/${index + 1}/200/300",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
