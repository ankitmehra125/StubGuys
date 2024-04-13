import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/username.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';

import '../../EventDetails/EventDetailsV1.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _selectedButtonController = TextEditingController();
  String _selectedButton = 'Button 1';
  FocusNode _focusNode = FocusNode();

  

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color(0xFF201335),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigate to the Material Page
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'Assets/Images/Components/step1_back.svg',
                            height: 40.0,
                            width: 40.0,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                              fontFamily: 'SatoshiBold',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        width: 50,
                        height: 50,
                        child: SvgPicture.asset(
                          'Assets/Images/Icon/tick.svg',
                          height: 40.0,
                          width: 40.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          SizedBox(
                            width: 122,
                            height: 122,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset(
                                  'Assets/Images/Icon/profilecircle.svg',
                                ),
                                const Center(
                                  child: Text(
                                    "C",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 40,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.013,
                          ),
                          Container(
                            width: 90,
                            height: 27,
                            decoration: BoxDecoration(
                              color: const Color(0xFFDEFBB8),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                "Change",
                                style: TextStyle(
                                  color: Color(0xFF696D61),
                                  fontSize: 10,
                                  fontFamily: 'SatoshiMedium',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      "Your Information",
                                      style: TextStyle(
                                        color: Color(0xFF201335),
                                        fontSize: 18,
                                        fontFamily: 'SatoshiBold',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          20.0), // Adjust the radius as needed
                                      border: Border.all(
                                        color: _focusNode.hasFocus
                                            ? const Color(0xFF8DC73F)
                                            : const Color(0xFFF1F1F2),
                                        width: 2.0,
                                      ),
                                      // Set your desired background color
                                    ),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(left: 16.0),
                                            child: Text(
                                              "First Name",
                                              style: TextStyle(
                                                color: Color(0xFFE3E3E3),
                                                fontSize: 16.0,
                                                fontFamily: 'SatoshiMedium',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 24,),
                                          OtherUserName(value: 'Cavil'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                //last name
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          20.0), // Adjust the radius as needed
                                      border: Border.all(
                                        color: const Color(0xFFF1F1F2),
                                        width:
                                            2.0, // Set your desired border width
                                      ),
                                      // Set your desired background color
                                    ),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(left: 16.0),
                                            child: Text(
                                              "Last Name",
                                              style: TextStyle(
                                                color: Color(0xFFE3E3E3),
                                                fontSize: 16.0,
                                                fontFamily: 'SatoshiMedium',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 16,),
                                          OtherUserName(value: 'lnwang'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                // Phone
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          20.0), // Adjust the radius as needed
                                      border: Border.all(
                                        color: const Color(0xFFF1F1F2),
                                        width:
                                            2.0, // Set your desired border width
                                      ),
                                      // Set your desired background color
                                    ),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(left: 16.0),
                                            child: Text(
                                              "Phone",
                                              style: TextStyle(
                                                color: Color(0xFFE3E3E3),
                                                fontSize: 16.0,
                                                fontFamily: 'SatoshiMedium',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 42,),
                                          OtherUserName(value: '(770) 707-6206'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                // Email
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          20.0), // Adjust the radius as needed
                                      border: Border.all(
                                        color: const Color(0xFFF1F1F2),
                                        width:
                                            2.0, // Set your desired border width
                                      ),
                                      // Set your desired background color
                                    ),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(left: 16.0),
                                            child: Text(
                                              "Email",
                                              style: TextStyle(
                                                color: Color(0xFFE3E3E3),
                                                fontSize: 16.0,
                                                fontFamily: 'SatoshiMedium',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 45,),
                                          OtherUserName(
                                              value: 'lordcavil@gmail.com'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                // Gender
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Container(
                                    width: double.infinity,
                                    height:
                                        MediaQuery.of(context).size.height *
                                            0.07,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          20.0), // Adjust the radius as needed
                                      border: Border.all(
                                        color: const Color(0xFFF1F1F2),
                                        width:
                                            2.0, // Set your desired border width
                                      ),
                                      // Set your desired background color
                                    ),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.0),
                                            child: Text(
                                              "Gender",
                                              style: TextStyle(
                                                color: Color(0xFFE3E3E3),
                                                fontSize: 16.0,
                                                fontFamily: 'SatoshiMedium',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 32,),
                                          OtherUserNameGender(value: 'Male'),
                                        ],
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleButtonSelection(String buttonValue) {
    setState(() {
      _selectedButton = buttonValue;
      _selectedButtonController.text = buttonValue;
    });
  }
}
