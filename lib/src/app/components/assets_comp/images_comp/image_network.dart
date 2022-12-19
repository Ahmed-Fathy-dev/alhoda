import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

//* CachedNetworkImage With a placeholder (PH)
class ImageNetViewPH extends StatelessWidget {
  const ImageNetViewPH({
    super.key,
    required this.imgUrl,
  });

  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) =>
          const Center(child: Icon(Icons.error)),
    );
  }
}

//* CachedNetworkImage With a a progress indicator (PI)
class ImageNetViewPI extends StatelessWidget {
  const ImageNetViewPI({
    super.key,
    required this.imgUrl,
  });

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          CircularProgressIndicator(value: downloadProgress.progress),
      errorWidget: (context, url, error) =>
          const Center(child: Icon(Icons.error)),
    );
  }
}
