import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/selectgender.dart';

class UserName extends StatelessWidget {
  final String value;
  final TextEditingController _textController;

  UserName({Key? key, required this.value})
      : _textController = TextEditingController(text: value),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250, // Set your desired width
      height: 50.0, // Set your desired height
      child: TextField(
        controller: _textController,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: _buildCouponValidationIcon(),
        ),
      ),
    );
  }

  Widget _buildCouponValidationIcon() {
    return const Icon(
      Icons.check_circle,
      color: Color(0xFF8DC73F),
    );
  }
}

class OtherUserName extends StatelessWidget {
  final String value;
  final TextEditingController _textController;

  OtherUserName({Key? key, required this.value})
      : _textController = TextEditingController(text: value),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250, // Set your desired width
      height: 50.0, // Set your desired height
      child: TextField(
        controller: _textController,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildCouponValidationIcon() {
    return const Icon(
      Icons.check_circle,
      color: Color(0xFF8DC73F),
    );
  }
}

class OtherUserNameGender extends StatefulWidget {
  final String value;
  final TextEditingController _textController;

  OtherUserNameGender({Key? key, required this.value})
      : _textController = TextEditingController(text: value),
        super(key: key);

  @override
  State<OtherUserNameGender> createState() => _OtherUserNameGenderState();
}

class _OtherUserNameGenderState extends State<OtherUserNameGender> {
  void _genderSelection() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        // Pass the callback function to SelectGender
        return Container(
          height: mQuery.size.height*0.35,
          child: SelectGender(
            onGenderSelected: (selectedGender) {
              setState(() {
                // Update the text field with the selected gender
                widget._textController.text = selectedGender;
              });
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170, // Set your desired width
      height: 50.0, // Set your desired height
      child: Row(
        children: [
          Expanded(
            child: TextField(
              readOnly: true,
              controller: widget._textController,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          GestureDetector(
            onTap: _genderSelection,
            child: Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: SvgPicture.asset(
                'Assets/Images/Components/dropdown.svg',
                height: 10.0,
                width: 10.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
