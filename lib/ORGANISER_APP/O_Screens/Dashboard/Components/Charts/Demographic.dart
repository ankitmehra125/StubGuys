import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedPieChart extends StatefulWidget {
  final List<double> values;

  AnimatedPieChart({required this.values});

  @override
  _AnimatedPieChartState createState() => _AnimatedPieChartState();
}

class _AnimatedPieChartState extends State<AnimatedPieChart> {
  late double animationValue;

  @override
  void initState() {
    super.initState();
    animationValue = 0.0;
    // Start the animation when the widget is first built
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        animationValue = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0, // Adjust the size as needed
      height: 180.0,
     
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0.0, end: animationValue),
        duration: const Duration(milliseconds: 500),
        builder: (context, double value, child) {
          return Transform.rotate(
            angle: 2 * pi * value,
            child: Stack(
              children: [
                Container(
                  width: 200.0, // Adjust the size as needed
                  height: 200.0,
                  child: CustomPaint(
                    painter: PieChartPainter(widget.values),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.035,
                          ),
                          width: 27.0, // Adjust the size as needed
                          height: 27.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white, // Adjust the color as needed
                          ),
                          child: const Center(
                            child: Text(
                              "25%",
                              style: TextStyle(
                                  color: Colors
                                      .black, // Adjust the text color as needed
                                  fontSize: 10.0,
                                  fontFamily: 'SatoshiBold'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.035,
                          ),
                          width: 27.0, // Adjust the size as needed
                          height: 27.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white, // Adjust the color as needed
                          ),
                          child: const Center(
                            child: Text(
                              "55%",
                              style: TextStyle(
                                  color: Colors
                                      .black, // Adjust the text color as needed
                                  fontSize: 10.0,
                                  fontFamily: 'SatoshiBold'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.035,
                          right: MediaQuery.of(context).size.width * 0.035),
                      width: 27.0, // Adjust the size as needed
                      height: 27.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Adjust the color as needed
                      ),
                      child: const Center(
                        child: Text(
                          "20%",
                          style: TextStyle(
                              color: Colors
                                  .black, // Adjust the text color as needed
                              fontSize: 10.0,
                              fontFamily: 'SatoshiBold'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  final List<double> values;

  PieChartPainter(this.values);

  @override
  void paint(Canvas canvas, Size size) {
    double totalValue = values.reduce((a, b) => a + b);

    double startRadian = 0.0;

    // Custom colors
    List<Color> customColors = [
      const Color(0xFF007AFB), // Blue
      const Color(0xFF52C9FA), // Light Blue
      const Color(0xFF2CDB8B), // Green
    ];

    for (int i = 0; i < values.length; i++) {
      double sweepRadian = (values[i] / totalValue) * (2 * pi);

      Paint paint = Paint()
        ..color = customColors[i % customColors.length] // Use custom colors
        ..style = PaintingStyle.stroke // Use stroke to draw only the border
        ..strokeWidth = 20.0; // Adjust the stroke width as needed

      // Draw the arc with a gap between each stroke
      canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 2),
        startRadian,
        sweepRadian - 0.02, // Adjust the gap size as needed
        false, // Set to false to draw only the border
        paint,
      );

      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
