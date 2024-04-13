
import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/MobileOtp/OTP1.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/OTP.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/SignUp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
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
            top: MediaQuery.of(context).size.height * 0.35,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.036,
                  ),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 28.0,
                      fontFamily: 'SatoshiBold',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'We are happy to see you here again. Enter your email address and password to continue.',
                          style: TextStyle(
                            color: Color(0xFF696D61),
                            fontSize: 15.0,
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              fontSize: 14.0, // Adjust the font size
                              fontWeight:
                                  FontWeight.w400, // Adjust the font weight
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
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 14.0, // Adjust the font size
                              fontWeight:
                                  FontWeight.w400, // Adjust the font weight
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
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
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
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'SatoshiBold',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Color(0xFF8DC73F),
                            fontSize: 15.0,
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
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
                  const Text(
                    "Don't have an account? ",
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
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: const Text(
                      "Sign up",
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
