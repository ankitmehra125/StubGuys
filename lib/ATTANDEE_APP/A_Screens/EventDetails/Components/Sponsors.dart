import 'package:flutter/material.dart';

class Sponsors extends StatelessWidget {
  final String imagePath;
  Sponsors({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0), // Adjust the margin as needed
      width: 100.0, // Set the desired width for each container
      height: 60.0, // Updated height for each container
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0), // Optional: Customize border radius
        border: Border.all(
          color: Color(0xFFDEFBB8), // Adjust the border color
          width: 5.0, // Adjust the border width
        ),
        image: DecorationImage(
          image: AssetImage(imagePath), // Adjust the BoxFit as needed
        ),
      ),
    );
  }
}
