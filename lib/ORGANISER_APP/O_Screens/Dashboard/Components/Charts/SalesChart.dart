import 'package:flutter/material.dart';

class SalesChart extends StatefulWidget {
  const SalesChart({super.key, required this.values});

  @override
  State<SalesChart> createState() => _SalesChartState();
  final List<double> values;
}

class _SalesChartState extends State<SalesChart> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Container(
      width: double.infinity,
      height: 310,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        border: Border.all(
          color: const Color(0xFFF1F1F2), // Adjust the border color as needed
          width: 1.0, // Adjust the border width as needed
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sales",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xFF201335),
                    fontFamily: 'SatoshiBold',
                  ),
                ),
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Color(0xFF696D61),
                    fontFamily: 'SatoshiBold',
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: mQuery.size.height * 0.01,
          // ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 10.0,
              bottom: MediaQuery.of(context).size.height * 0.03,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "29,981",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Color(0xFF201335),
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
                Text(
                  "(+12.4%)",
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Color(0xFF008000),
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
