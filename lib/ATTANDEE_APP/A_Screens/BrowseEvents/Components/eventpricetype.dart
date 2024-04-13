import 'package:flutter/material.dart';

class EventPriceType extends StatefulWidget {
  final double width;
  final Color defaultColor;
  final Color activeColor;
  final String text;
  final Function(bool isSelected) onSelect;

  EventPriceType({
    required this.width,
    required this.defaultColor,
    required this.activeColor,
    required this.text,
    required this.onSelect,
  });

  @override
  _EventPriceTypeState createState() => _EventPriceTypeState();
}

class _EventPriceTypeState extends State<EventPriceType> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
          widget.onSelect(isClicked);
      },
      child: Expanded(
        child: Container(
          width: widget.width,
          height: 50,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: isClicked ? widget.activeColor : widget.defaultColor,
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
              color: isClicked
                  ? Color.fromARGB(255, 255, 255, 255)
                  : Color(0xFF8DC73F), // Change border color as needed
              width: 2.0, // Change border width as needed
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                fontSize: 14.5,
                color: Color(0xFF696D61),
                fontFamily: 'SatoshiMedium',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
