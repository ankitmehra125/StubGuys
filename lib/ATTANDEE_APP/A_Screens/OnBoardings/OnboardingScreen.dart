import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/Login.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/SignUp.dart';
import 'package:flutter/material.dart';
import 'onboarding_page_1.dart';
import 'onboarding_page_2.dart';
import 'onboarding_page_3.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: 3,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return OnboardingPage1();
                case 1:
                  return OnboardingPage2();
                case 2:
                  return OnboardingPage3();
                default:
                  return Container(); // Placeholder, should not be reached
              }
            },
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildDot(0),
                    buildDot(1),
                    buildDot(2),
                  ],
                ),
                SizedBox(height: 90.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                        // TODO: Add logic for Skip button if needed
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.black, // Set the text color to black
                      ),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'SatoshiRegular',
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        if (_currentPage < 2) {
                          // Slide to the next page if not on the last page
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        } else if (_currentPage == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
                          );
                        } else {
                          // TODO: Handle what happens when you're on the last page
                        }
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.black, // Set the text color to black
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'SatoshiRegular',
                            ),
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int pageIndex) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      width: 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == pageIndex ? Colors.black : Colors.grey[200],
      ),
    );
  }
}
