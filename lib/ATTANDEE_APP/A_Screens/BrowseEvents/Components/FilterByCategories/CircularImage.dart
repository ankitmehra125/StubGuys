import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CircularImageContainer extends StatelessWidget {
  final String imageUrl;
  final double size;

  CircularImageContainer({
    required this.imageUrl,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        
      ),
      child: ClipOval(
        child: Image.network(
          imageUrl,
          width: 100, // Set your desired width
          height: 100, // Set your desired height
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
