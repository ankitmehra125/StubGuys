import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Components/ticketselector.dart';
import '../EventDetailsV1.dart';
import 'Step3.dart';

class Step2 extends StatefulWidget {
  const Step2({super.key});

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
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
                        MaterialPageRoute(
                            builder: (context) => const EventDetails()),
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
                      child: Column(
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
                                  color: Colors.amber,
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
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          const Center(
                            child: Text(
                              "General Admission",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontFamily: 'SatoshiBold',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.003,
                          ),
                          const Center(
                            child: Text(
                              "50 tickets available",
                              style: TextStyle(
                                color: Color(0xFF8DC73F),
                                fontSize: 14.0,
                                fontFamily: 'SatoshiRegular',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          MyCarousel(),
                          const Center(
                            child: Text(
                              "Tickets",
                              style: TextStyle(
                                color: Color(0xFF201335),
                                fontSize: 15.0,
                                fontFamily: 'SatoshiBold',
                              ),
                            ),
                          ),
                         
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Center(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Step3()),
                                          );
                                        },
                                        style: ButtonStyle(
                                          elevation: MaterialStateProperty.all(0),
                                          // Set elevation to 0
                                          backgroundColor: MaterialStateProperty.all(
                                            Color(0xFF8DC73F),
                                          ),
                                          // Set your desired color
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  15.0), // Set your desired border radius
                                            ),
                                          ),
                                        ),
                                        child:  SizedBox(
                                          width: double.infinity,
                                          // Set your desired width
                                          height: mQuery.size.height*0.065,
                                          // Set your desired height
                                          child: Center(
                                            child: Text(
                                              'Checkout',
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
                                    SizedBox(height: mQuery.size.height*0.023,)
                                  ],
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
}
