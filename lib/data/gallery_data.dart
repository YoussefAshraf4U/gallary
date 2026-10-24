import '../models/gallery_image.dart';

/// Predefined local source of images.
/// Add or remove entries here to change what the gallery displays.
class GalleryData {
  GalleryData._();

  static const List<GalleryImage> images = [
    GalleryImage(path: 'assets/images/sunset.jpg', title: 'Sunset'),
    GalleryImage(path: 'assets/images/mountains.jpg', title: 'Mountains'),
    GalleryImage(path: 'assets/images/ocean.jpg', title: 'Ocean'),
    GalleryImage(path: 'assets/images/forest.jpg', title: 'Forest'),
    GalleryImage(path: 'assets/images/desert.jpg', title: 'Desert'),
    GalleryImage(path: 'assets/images/night.jpg', title: 'Night Sky'),
  ];
}
