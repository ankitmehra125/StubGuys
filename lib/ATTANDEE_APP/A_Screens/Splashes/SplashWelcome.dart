import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/Login.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/OnBoardings/OnboardingScreen.dart';
import 'package:flutter/material.dart';

class SplashWelcome extends StatefulWidget {
  const SplashWelcome({super.key});

  @override
  State<SplashWelcome> createState() => _SplashWelcomeState();
}

class _SplashWelcomeState extends State<SplashWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'Assets/Images/welcome_party.jpg', // replace with your image asset
            fit: BoxFit.cover,
          ),

          // Container with Opacity for fading effect
          Container(
            color: Colors.black.withOpacity(0.3), // adjust opacity as needed
          ),

          // Your Content in the Center
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Center(
                child: Text(
                  'Welcome to StubGuys',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontFamily: 'SatoshiBold',
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                child: const Text(
                  'Browse exciting events, effortlessly organize your '
                  'own, and seamlessly manage your event '
                  'experiences all from the palm of your hand.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontFamily: 'SatoshiLight',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => OnboardingScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    minimumSize: const Size(390.0, 55.0),
                    primary: const Color(0xFF8DC73F),
                  ),
                  child: Container(
                    // width: 390.0,
                    width: double.infinity,
                    height: 55.0,
                    alignment: Alignment.center,
                    child: const Text(
                      'I\'m new Here',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button press logic here

                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => Login()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: const BorderSide(color: Colors.white, width: 0.5),
                    ),
                    primary: Colors.transparent,
                  ),
                  child: Container(
                    // width: 390.0,
                    width: double.infinity,
                    height: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Center(
                      child: Text(
                        'I already have an account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
