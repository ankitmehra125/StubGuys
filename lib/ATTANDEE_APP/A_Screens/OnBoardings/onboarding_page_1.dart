import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('Assets/Images/OnBoarding/ob1.svg'),
          const Text(
            'Have no plans \nfor the weekend?',
            style: TextStyle(
              color: Color(0xFF201335),
              fontSize: 28.0,
              fontFamily: 'SatoshiBold',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          const Text(
            'Nothing beats that moment when you realize that \nyou have no weekend plans.',
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
