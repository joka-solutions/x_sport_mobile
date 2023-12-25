import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ImagePreloadingService {
  bool isImage(String assetPath) {
    final ext = assetPath.split('.').last.toLowerCase();
    return ext == 'png' ||
        ext == 'jpg' ||
        ext == 'jpeg' ||
        ext == 'gif' ||
        ext == 'webp';
  }

  Future<List<String>> getAllImagePaths() async {
    const directory = 'assets/images/';
    final assetManifest = await AssetManifest.loadFromAssetBundle(rootBundle);
    final imageAssetsList = assetManifest
        .listAssets()
        .where((string) => string.startsWith(directory) || isImage(string))
        .toList();

    return imageAssetsList;
  }

  Future<void> preloadImages(BuildContext context) async {
    final List<String> imagePaths = await getAllImagePaths();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      for (var imagePath in imagePaths) {
        await precacheImage(AssetImage(imagePath), context);
      }
    });
  }
}
