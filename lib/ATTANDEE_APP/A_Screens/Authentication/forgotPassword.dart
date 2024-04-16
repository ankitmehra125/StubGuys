import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/Login.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/MobileOtp/OTP1.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/OTP.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailOrPhoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background Image with 40% from the top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Image.asset(
              'Assets/Images/Login.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // White Container with Login and Password
          // Positioned with top left and top right border radius
          Positioned(
            top: MediaQuery.of(context).size.height * 0.27,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  const Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 24.0,
                      fontFamily: 'SatoshiBold',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal : MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enter your email or phone number to receive",style: TextStyle(
                          color: Color(0xff696D61),
                          fontFamily: 'SatoshiMedium'
                        ),),
                        Text("password reset code.",style: TextStyle(
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium'
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.05,),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'E-mail or phone number',
                            labelStyle: TextStyle(
                              fontFamily: 'SatoshiMedium',
                              color: Color(0xFF696D61),
                              // Adjust the color
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(
                                    0xFF696D61), // Adjust the color of the base line
                                width: 0.9, // Adjust the width of the base line
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(
                                    0xFF696D61), // Adjust the color of the base line for unfocused state
                                width:
                                0.9, // Adjust the width of the base line for unfocused state
                              ),
                            ),
                          ),
                          controller: emailOrPhoneController,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OTP1()),
                            );
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
                            width: 390.0,
                            height: 55.0,
                            alignment: Alignment.center,
                            child: const Text(
                              'Reset password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'SatoshiBold',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.075,
              decoration: const BoxDecoration(
                color: Color(0xFFDEFBB8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      // fontFamily: "Satoshi",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 22 / 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        // fontFamily: "Satoshi",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 22 / 16,
                        color: Color(0xff8dc73f),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
