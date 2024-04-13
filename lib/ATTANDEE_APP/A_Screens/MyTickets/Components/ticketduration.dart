import 'package:flutter/material.dart';

class ticketduration extends StatefulWidget {
  final Function(String) onButtonSelected;

  const ticketduration({Key? key, required this.onButtonSelected})
      : super(key: key);

  @override
  State<ticketduration> createState() => _ticketdurationState();
}

class _ticketdurationState extends State<ticketduration> {
  TextEditingController _selectedButtonController = TextEditingController();
  String _selectedButton = 'Button 1';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildElevatedButton('Button 1', 'Upcoming', 70.0),
        buildElevatedButton('Button 2', 'Completed', 75.0),
      ],
    );
  }

  Widget buildElevatedButton(
      String buttonValue, String buttonText, double width) {
    return ElevatedButton(
      onPressed: () {
        widget.onButtonSelected(
            buttonValue); // Call the callback with the selected button
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return _selectedButton == buttonValue
                ? const Color(0xFFDEFBB8)
                : Colors.white;
          },
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (Set<MaterialState> states) {
            if (_selectedButton != buttonValue) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                  color: Color(0xFFF1F1F2),
                ),
              );
            } else {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              );
            }
          },
        ),
        elevation: MaterialStateProperty.all(0),
      ),
      child: Container(
        width: width,
        height: 50,
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontFamily: 'SatoshiMedium',
            ),
          ),
        ),
      ),
    );
  }

  void _handleButtonSelection(String buttonValue) {
    setState(() {
      _selectedButton = buttonValue;
      _selectedButtonController.text = buttonValue;
    });
  }
}
