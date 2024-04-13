import 'package:flutter/material.dart';

class HorizontalAssetImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Container(
        height: 160.0, // Updated height for each container
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4, // Assuming you want to show 4 images
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(8.0), // Adjust the margin as needed
              width: 150.0, // Set the desired width for each container
              height: 160.0, // Updated height for each container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0), // Optional: Customize border radius
                border: Border.all(
                  color: Color(0xFFDEFBB8), // Adjust the border color
                  width: 5.0, // Adjust the border width
                ),
                image: DecorationImage(
                  image: AssetImage('Assets/Images/welcome_party.jpg'), // Adjust the asset path and file names
                  fit: BoxFit.cover, // Adjust the BoxFit as needed
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

