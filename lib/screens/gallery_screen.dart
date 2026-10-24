import 'package:flutter/material.dart';

import '../data/gallery_data.dart';
import '../widgets/image_tile.dart';
import 'image_viewer_screen.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  void _openViewer(BuildContext context, int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ImageViewerScreen(
          images: GalleryData.images,
          initialIndex: index,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final images = GalleryData.images;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return ImageTile(
            image: images[index],
            onTap: () => _openViewer(context, index),
          );
        },
      ),
    );
  }
}
