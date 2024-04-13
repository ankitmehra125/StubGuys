import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  final double width;
  final Color defaultColor;
  final Color activeColor;
  final String text;
  final String imageUrl;
  final Function(bool isSelected) onSelect;

  Categories({
    required this.width,
    required this.defaultColor,
    required this.activeColor,
    required this.text,
    required this.imageUrl,
    required this.onSelect,
  });

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
      child: Container(
        width: widget.width,
        height: 58,
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.network(
                    widget.imageUrl,
                    width: 32, // Set your desired width
                    height: 32, // Set your desired height
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 14.5,
                  color: Color(0xFF696D61),
                  fontFamily: 'SatoshiMedium',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
