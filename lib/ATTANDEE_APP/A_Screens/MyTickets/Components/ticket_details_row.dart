import 'package:flutter/material.dart';

class ticket_details_row extends StatefulWidget {
  final String title;
  final String titledetails;
  const ticket_details_row(
      {super.key, required this.title, required this.titledetails});

  @override
  State<ticket_details_row> createState() => _ticket_details_rowState();
}

class _ticket_details_rowState extends State<ticket_details_row> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(
              widget.title,
              style: const TextStyle(
                color: Color(0xFF696D61),
                fontFamily: 'SatoshiMedium',
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          SizedBox(
            child: Text(
              widget.titledetails,
              style: const TextStyle(
                color: Color(0xFF201335),
                fontSize: 12,
                fontFamily: 'SatoshiMedium',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
