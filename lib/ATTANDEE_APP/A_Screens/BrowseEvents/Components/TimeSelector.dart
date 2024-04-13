import 'package:flutter/material.dart';

class TimeSelector extends StatefulWidget {
  const TimeSelector({Key? key}) : super(key: key);

  @override
  State<TimeSelector> createState() => _TimeSelectorState();
}

class _TimeSelectorState extends State<TimeSelector> {
  TextEditingController _selectedButtonController = TextEditingController();
  String _selectedButton = 'Button 1';

  @override 
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildElevatedButton('Button 1', 'Today',),
        buildElevatedButton('Button 2', 'This Week',),
        buildElevatedButton('Button 3', 'This Month',),
      ],
    );
  }

  Widget buildElevatedButton(String buttonValue, String buttonText) {
    return ElevatedButton(
      onPressed: () {
        _handleButtonSelection(buttonValue);
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
        height: 50,
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 13.0,
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
