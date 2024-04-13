import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String imageUrl;
  final Color borderColor;

  const CircleImage({
    required this.imageUrl,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45, // Set your desired width
      height: 45, // Set your desired height
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 0.0, // Set your desired border width
        ),
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