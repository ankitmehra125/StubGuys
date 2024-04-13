import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_HomeFeeds/O_HomeFeed.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawReceipt.dart';

class RefundIssued extends StatelessWidget {
  const RefundIssued({super.key});

  Future<void> _handleBackButton(BuildContext context) async {
    // Handle back button press here
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              O_HomeFeed()), // Replace HomeFeed() with the actual class for your home feed
    );
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        // Handle back button press here
        await _handleBackButton(context);
        return false;
      },
      child: Scaffold(
        backgroundColor: const Color(0xffdefbb8),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: mQuery.size.height * 0.29,
              ),
              Center(
                  child: SvgPicture.asset(
                "Assets/Images/Components/Flags/tick.svg",
                height: 182,
                width: 182,
              )),
              SizedBox(
                height: mQuery.size.height * 0.007,
              ),
              const Text(
                "Refund issued!",
                style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff201335)),
              ),
              SizedBox(
                height: mQuery.size.height * 0.007,
              ),
              const Text(
                '\$25.00 refunded to Brandon Kelty.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: mQuery.size.height * 0.21,
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const O_HomeFeed()),
                  )
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: mQuery.size.height * 0.055,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff201335)),
                    child: const Center(
                      child: Text(
                        "Okay, got it",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'SatoshiMedium'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mQuery.size.height * 0.015,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WithdrawReceipt()),
                  );
                },
                child: const Text(
                  "Back to orders",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SatoshiMedium'),
                ),
              )
            ],
          ),
        ),
     ),
);
}
}
