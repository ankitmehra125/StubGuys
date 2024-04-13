import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SalesDetails extends StatefulWidget {
  const SalesDetails({super.key});

  @override
  State<SalesDetails> createState() => _SalesDetailsState();
}

class _SalesDetailsState extends State<SalesDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 97,
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFF1F1F2), // Border color
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15.0), // Border radius
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Net Ticket Sales",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 14,
                    fontFamily: 'SatoshiMedium',
                    height: 1.1,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.006,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "342",
                      style: TextStyle(
                        color: Color(0xFF201335),
                        fontSize: 20,
                        fontFamily: 'SatoshiMedium',
                        height: 1.1,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.015,
                    ),
                    const Text(
                      "(+40%)",
                      style: TextStyle(
                        color: Color(0xFF008000),
                        fontSize: 10,
                        fontFamily: 'SatoshiMedium',
                        height: 1.1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.006,
                ),
                const Text(
                  "Report for today",
                  style: TextStyle(
                    color: Color(0xFFAAAAAA),
                    fontSize: 10,
                    fontFamily: 'SatoshiMedium',
                    height: 1.1,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              'Assets/ORGANISER_APP/Icons/Dashboard/revenue.svg', // Replace with your SVG file path
            ),
          ],
        ),
      ),
    );
  }
}
