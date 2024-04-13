import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/CreateEventsmain.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step1.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Charts/Demographic.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Charts/SalesChart.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Sales.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/firstreporttext.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/mostperformingevents.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_AttendeesList/Attendees.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Support/O_SupportMain.dart';

class O_Dashboard extends StatefulWidget {
  const O_Dashboard({super.key});

  @override
  State<O_Dashboard> createState() => _O_DashboardState();
}

class _O_DashboardState extends State<O_Dashboard> {
  //Navigation
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 15.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 60,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Navigation",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF201335),
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                        height: 1.1,
                      ),
                    ),
                    Icon(
                      Icons.close,
                      size: 25,
                      color: Color(0xFF545454),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Row(
                  children: [
                    const Text(
                      "Event Promotion",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF8DC73F),
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset('Assets/Images/copy.svg')
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Row(
                  children: [
                    const Text(
                      "Reports",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF8DC73F),
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset('Assets/Images/copy.svg')
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const O_Attendees()),
                    );
                  },
                  child: const Text(
                    "Attendees",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFF8DC73F),
                      fontSize: 20,
                      fontFamily: 'SatoshiBold',
                      height: 1.1,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const O_Supportmain()),
                    );
                  },
                  child: const Text(
                    "Contact Support",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFF8DC73F),
                      fontSize: 20,
                      fontFamily: 'SatoshiBold',
                      height: 1.1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  void _onLocationFeature(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 16.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
          );
        }); 
  }

  final List<String> texts = ['Text 1', 'Text 2', 'Text 3', 'Text 4', 'Text 5'];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: MediaQuery.of(context).size.height * 0.1,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Dashboard",
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 38,
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                         onTap: () {
              _showBottomSheet(context);
            },
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: SvgPicture.asset(
                            'Assets/ORGANISER_APP/Icons/Dashboard/hamburger.svg', // Replace with your SVG file path
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'Assets/ORGANISER_APP/Icons/Dashboard/bell.svg', // Replace with your SVG file path
                            ),
                          ),
                          Positioned(
                            right: 1,
                            child: Container(
                              width: 17, // Adjust the width as needed
                              height: 17, // Adjust the height as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Color(0xFF8DC73F), // Set the circle color
                              ),
                              child: const Center(
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    color: Colors.white, // Set the text color
                                    fontSize:
                                        10, // Adjust the font size as needed
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              MyClickableText(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SalesDetails(),
                  SalesDetails(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Column(
                children: [
                  Container(
                    // height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xFFF1F1F2))),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Your Most Performing Event(s)",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 12,
                            fontFamily: 'SatoshiBold',
                            height: 1.1,
                          ),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.02,
                        ),

                        // Unleashing Africa's Future with bill Gates
                        const MostPerformingEvents(
                          imageurl:
                              'Assets/Images/Components/browseeventsexample1.jpg',
                          topic:
                              '"Unleashing Africa\'s Future with bill Gates"',
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.012,
                        ),
                        const MostPerformingEvents(
                          imageurl:
                              'Assets/Images/Components/browseeventsexample2.jpg',
                          topic: 'StubGuys Launch 2023',
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.012,
                        ),
                        const MostPerformingEvents(
                          imageurl:
                              'Assets/Images/Components/browseeventsexample1.jpg',
                          topic: 'Cookathon Event',
                        ),

                        // Cookathon Event
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateEventsMain()),
                          );
                        },
                        child: Container(
                          width: mQuery.size.width * 0.43,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff96cc39)),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              "Manage Events",
                              style: TextStyle(
                                  color: Color(0xff96cc39),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CE_Step1()),
                          );
                        },
                        child: Container(
                          width: mQuery.size.width * 0.43,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              "Create New Event",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.03,
                  ),
                  const SalesChart(
                    values: [100, 150, 200, 120, 180, 250, 170],
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.03,
                  ),
                  Container(
                    width: double.infinity,
                    height: 310,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                        color: const Color(
                            0xFFF1F1F2), // Adjust the border color as needed
                        width: 1.0, // Adjust the border width as needed
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                            top: 10.0,
                            bottom: mQuery.size.height * 0.03,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Demographic",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xFF201335),
                                  fontFamily: 'SatoshiBold',
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Monthly",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'SatoshiBold',
                                        color: Color(0xFF696D61)),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xFF696D61),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: AnimatedPieChart(
                            values: const [55, 25, 20],
                          ),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //Male
                            Row(
                              children: [
                                Container(
                                  width: 7.0,
                                  height: 7.0,
                                  color: const Color(0xFFFACF55),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'SatoshiBold',
                                      color: Color(0xFF696D61)),
                                ),
                              ],
                            ),
                            //Female
                            Row(
                              children: [
                                Container(
                                  width: 7.0,
                                  height: 7.0,
                                  color: const Color(0xFF95E5F3),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "Female",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'SatoshiBold',
                                      color: Color(0xFF696D61)),
                                ),
                              ],
                            ),
                            //others
                            Row(
                              children: [
                                Container(
                                  width: 7.0,
                                  height: 7.0,
                                  color: const Color(0xFFFF83C6),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "Others",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'SatoshiBold',
                                      color: Color(0xFF696D61)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.03,
                  ),
                  Container(
                    width: double.infinity,
                    height: 280,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                        color: const Color(
                            0xFFF1F1F2), // Adjust the border color as needed
                        width: 1.0, // Adjust the border width as needed
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                              top: 20.0,
                              bottom: mQuery.size.height * 0.03,
                            ),
                            child: const Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Top Cities",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'SatoshiMedium',
                                          color: Color(0xFF201335)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Palm Beach ",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: 'SatoshiMedium',
                                          color: Color(0xFF696D61)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Texas",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: 'SatoshiMedium',
                                          color: Color(0xFF696D61)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Los Angeles",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: 'SatoshiMedium',
                                          color: Color(0xFF696D61)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Texas",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: 'SatoshiMedium',
                                          color: Color(0xFF696D61)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Los Angeles",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: 'SatoshiMedium',
                                          color: Color(0xFF696D61)),
                                    ),
                                  ],
                                ),
                                // ListView.builder(
                                //   itemCount: texts.length,
                                //   itemBuilder: (context, index) {
                                //     return Row(
                                //       children: [
                                //         Text(
                                //           texts[index],
                                //           style: const TextStyle(
                                //               fontSize: 10.0,
                                //               fontFamily: 'SatoshiMedium',
                                //               color: Color(0xFF696D61)),
                                //         ),
                                //       ],
                                //     );
                                //   },
                                // ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
