import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationSubRow extends StatelessWidget {
  final String svgPath;
  final String labelText;

  LocationSubRow(this.svgPath, this.labelText);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          svgPath,
          height: 20, // Set the desired height
          width: 20, // Set the desired width
        ),
        const SizedBox(width: 8.0),
        Text(
          labelText,
          style: const TextStyle(
            color: Color(0xFF696D61),
            fontSize: 13,
            fontFamily: 'SatoshiRegular',
          ),
        ),
      ],
    );
  }
}
