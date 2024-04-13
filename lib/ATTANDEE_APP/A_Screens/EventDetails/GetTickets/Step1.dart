import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../EventDetailsV1.dart';
import 'Step2.dart';


class Step1 extends StatefulWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  TextEditingController _selectedButtonController = TextEditingController();
  String _selectedButton = 'Button 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const EventDetails()),
                      );
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
                        'Checkout',
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
                      'Assets/Images/Components/step1_bell.svg',
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
            Expanded(
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
                      child: ListView(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Stack(children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.27,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),

                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'Assets/Images/Components/step1_mainimage.png',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, right: 55.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.14,
                                    ),
                                    const Text(
                                      "June 21",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    const Text(
                                      "Unleashing Africa’s Future with Bill Gates.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.0,
                                        fontFamily: 'SatoshiMedium',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.0,
                              top: MediaQuery.of(context).size.height * 0.02,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 57,
                                  height: 57,
                                  padding: const EdgeInsets.all(17.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: const Color(0xFFDEFBB8),
                                  ),
                                  child: SvgPicture.asset(
                                    'Assets/Images/Components/step1_ticket.svg',
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "From \$25.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: [
                                Text(
                                  "Choose Ticket Type",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    _handleButtonSelection('Button 1');
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        return _selectedButton == 'Button 1'
                                            ? const Color(0xFFDEFBB8)
                                            : Colors.white;
                                      },
                                    ),
                                    shape: MaterialStateProperty.resolveWith<
                                        OutlinedBorder>(
                                      (Set<MaterialState> states) {
                                        if (_selectedButton != 'Button 1') {
                                          return RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            side: const BorderSide(
                                              color: Color(0xFFF1F1F2),
                                            ), // Set your desired border color
                                          );
                                        } else {
                                          return RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          );
                                        }
                                      },
                                    ),
                                    elevation: MaterialStateProperty.all(0),
                                  ),
                                  child: Container(
                                    width: 120,
                                    height: 50,
                                    child: const Center(
                                      child: Text(
                                        'General Admission',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                          fontFamily: 'SatoshiMedium',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    _handleButtonSelection('Button 2');
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        return _selectedButton == 'Button 2'
                                            ? const Color(0xFFDEFBB8)
                                            : Colors.white;
                                      },
                                    ),
                                    shape: MaterialStateProperty.resolveWith<
                                        OutlinedBorder>(
                                      (Set<MaterialState> states) {
                                        if (_selectedButton != 'Button 2') {
                                          return RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            side: const BorderSide(
                                              color: Color(0xFFF1F1F2),
                                            ), // Set your desired border color
                                          );
                                        } else {
                                          return RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          );
                                        }
                                      },
                                    ),
                                    elevation: MaterialStateProperty.all(0),
                                  ),
                                  child: Container(
                                    width: 30,
                                    height: 50,
                                    child: const Center(
                                      child: Text(
                                        'VIP',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                          fontFamily: 'SatoshiMedium',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15),
                            child: Divider(
                              thickness: 0.17,

                              color: Colors.grey, // Set your desired thickness
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'General Admission',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontFamily: 'SatoshiMedium',
                                  ),
                                ),
                                Text(
                                  '\$25.00',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                    fontFamily: 'SatoshiRegular',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Row(children: [
                              Text(
                                '50 Tickets Available',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Color(0xFF8DC73F),
                                  fontFamily: 'SatoshiRegular',
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Step2()),
                                    );
                                  },
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    // Set elevation to 0
                                    backgroundColor: MaterialStateProperty.all(
                                      const Color(0xFF8DC73F),
                                    ),
                                    // Set your desired color
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0), // Set your desired border radius
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    // Set your desired width
                                    height: 55.0,
                                    // Set your desired height
                                    child: const Center(
                                      child: Text(
                                        'Next',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontFamily: 'SatoshiBold',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
