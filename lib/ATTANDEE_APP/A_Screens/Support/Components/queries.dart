import 'package:flutter/material.dart';

class Queries extends StatefulWidget {
  final String title;

  const Queries({Key? key, required this.title}) : super(key: key);

  @override
  State<Queries> createState() => _QueriesState();
}

class _QueriesState extends State<Queries> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title, // Use widget.title instead of title
            style: const TextStyle(
              color: Color(0xFF201335),
              fontSize: 14,
              fontFamily: 'SatoshiMedium',
            ),
          ),
          const Icon(
            Icons.navigate_next_rounded,
            color: Color(0xFF545454),
          ),
        ],
      ),
    );
  }
}
