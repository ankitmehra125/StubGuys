import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Splashes/Splash.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 22.0, left: 22.0, right: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Are you sure you want to logout?",
              style: TextStyle(
                color: Color(0xFF201335),
                fontSize: 20,
                fontFamily: 'SatoshiBold',
                height: 1.1,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.045),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to SplashScreen and clear the entire stack
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Splash()),
                    (route) => false, // Clear all existing routes
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Color(0xFF8DC73F), // Background color of button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text(
                  "Yes",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SatoshiBold',
                    height: 1.1,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Add your "No" button logic here
                  Navigator.pop(context); // Close the bottom sheet
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0, // Background color of button
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text(
                  "No, Cancel",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 16,
                    fontFamily: 'SatoshiBold',
                    height: 1.1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
