import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// a callback function type for handling the selected gender
typedef GenderSelectedCallback = void Function(String selectedGender);

class SelectGender extends StatefulWidget {
  // Pass the callback function as a parameter
  final GenderSelectedCallback onGenderSelected;

  const SelectGender({Key? key, required this.onGenderSelected})
      : super(key: key);

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  // Define a variable to store the selected gender
  String selectedGender = '';
  // Helper function to create a gender selection button
  Widget _buildGenderButton(String gender) {
    return GestureDetector(
      onTap: () {
        // Notify the parent about the selected gender
        widget.onGenderSelected(gender);

        // Close the bottom sheet
        Navigator.pop(context);
      },
      child: Text(
        gender,
        style: const TextStyle(
          color: Color(0xFF201335),
          fontSize: 20,
          fontFamily: 'SatoshiMedium',
          height: 1.1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.28,
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Gender",
              style: TextStyle(
                color: Color(0xFF201335),
                fontSize: 20,
                fontFamily: 'SatoshiBold',
                height: 1.1,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Center(
              child: Column(
                children: [
                  // Create buttons for selecting gender
                  _buildGenderButton("Male"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  _buildGenderButton("Female"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  _buildGenderButton("Rather not say"),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
