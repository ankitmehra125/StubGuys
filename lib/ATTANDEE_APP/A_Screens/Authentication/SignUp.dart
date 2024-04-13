import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/Login.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/MobileOtp/OTP1.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/OTP.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    const Text(
                      'Create an account',
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
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Full name',
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
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                fontFamily: 'SatoshiMedium',  // Adjust the font weight
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
                                'Create an account',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontFamily: 'SatoshiBold',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.39,
                                child: const Divider(
                                  color: Color.fromARGB(255, 205, 205, 205),
                                  thickness: 1,
                                ),
                              ),
                              const Text(
                                "   or   ",
                                style: TextStyle(
                                  // fontFamily: "Satoshi",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 22 / 16,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.39,
                                child: const Divider(
                                  color: Color.fromARGB(255, 205, 205, 205),
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("Assets/Images/Icon/facebook.jpg"),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset("Assets/Images/Icon/google.jpg"),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset("Assets/Images/Icon/apple.jpg"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.035,
                    ),
                  ],
                ),
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
