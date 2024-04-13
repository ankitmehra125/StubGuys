import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('Assets/Images/OnBoarding/ob2.svg'),
          const Text(
            'Easy way to spend \nyour time with fun',
            style: TextStyle(
              color: Color(0xFF201335),
              fontSize: 28.0,
              fontFamily: 'SatoshiBold',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          const Text(
            'No matter where you live - explore events \nhappening in the city.',
            style: TextStyle(
              color: Color(0xFF201335),
              fontSize: 16.0,
              fontFamily: 'SatoshiLight',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 110,),
        ],
      ),
    );
  }
}
