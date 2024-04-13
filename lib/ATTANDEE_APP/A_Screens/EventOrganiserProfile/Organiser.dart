import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Components/BrowseEventsTiles.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Components/UpcomingEventsData.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/EventOrganiserProfile/Components/PostCreator/Posts.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/EventOrganiserProfile/Components/Time/PastPosts.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/EventOrganiserProfile/Components/Time/UpcomingPosts.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/username.dart';

import '../EventDetails/EventDetailsV1.dart';

class Organizer extends StatefulWidget {
  const Organizer({Key? key}) : super(key: key);

  @override
  State<Organizer> createState() => _OrganizerState();
}

class _OrganizerState extends State<Organizer> {
  int selectedTextIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  color: const Color(0xFF201335),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.06,
                            left: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigate to the Material Page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const EventDetails(),
                                  ),
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.25),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // PP

                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 122,
                          height: 122,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                'Assets/Images/Icon/organizercircle.svg',
                              ),
                              Center(
                                child: Image.asset(
                                  'Assets/Images/Icon/stubguys.png',
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    const Text(
                      'Stubguys',
                      style: TextStyle(
                        color: Color(0xFF201335),
                        fontSize: 20.0,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      '5.3K Followers',
                      style: TextStyle(
                        color: Color(0xFF696D61),
                        fontSize: 13.0,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // Follow/Message button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle button click
                            print('Button clicked!');
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white, // Background color
                            onPrimary: const Color(0xFF696D61), // Text color
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(15.0), // Border radius
                              side: const BorderSide(
                                color: Color(0XFFEAEAEA), // Border color
                                width: 1.0, // Border width
                              ),
                            ),
                            minimumSize: const Size(
                                125.0, 49.0), // Button width and height
                          ),
                          child: const Text(
                            'Follow',
                            style: TextStyle(
                              color: Color(0xFF696D61),
                              fontSize: 15.0,
                              fontFamily: 'SatoshiRegular',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              // Handle button click
                              print('Button clicked!');
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary:
                                  const Color(0xFFDEFBB8), // Background color
                              onPrimary: const Color(0xFF696D61), // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0), // Border radius
                              ),
                              minimumSize: const Size(
                                  110.0, 49.0), // Button width and height
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Message',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontFamily: 'SatoshiRegular',
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 2.0),
                                  child: Icon(
                                    Icons.mail_outline_outlined,
                                    size: 17,
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    //FB/Insta
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Color(0xFF696D61),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Icon(Icons.camera_alt_outlined,
                            color: Color(0xFF696D61))
                      ],
                    ),
                    // Previous code...

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row containing two texts
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedTextIndex = 0;
                                  });
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Upcoming',
                                      style: TextStyle(
                                        fontFamily: 'SatoshiBold',
                                        fontSize:
                                            selectedTextIndex == 0 ? 40 : 38,
                                        color: selectedTextIndex == 0
                                            ? Color(0xFF201335)
                                            : Color(0xFFD6D6D6),
                                      ),
                                    ),
                                    if (selectedTextIndex == 0)
                                      Container(
                                        height: 2,
                                        width: 150,
                                        color: Color(0xFF8DC73F),
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              GestureDetector(
                                onTap: () {
                                  // Set the selected index and trigger a rebuild
                                  setState(() {
                                    selectedTextIndex = 1;
                                  });
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pasts',
                                      style: TextStyle(
                                        fontFamily: 'SatoshiBold',
                                        fontSize:
                                            selectedTextIndex == 0 ? 40 : 38,
                                        color: selectedTextIndex == 0
                                            ? Color(0xFFD6D6D6)
                                            : Color(0xFF201335),
                                      ),
                                    ),
                                    if (selectedTextIndex == 1)
                                      Container(
                                        height: 2,
                                        width: 70,
                                        color: Color(0xFF8DC73F),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          // Widgets based on the selected text
                        ],
                      ),
                    ),
                    Visibility( 
                      visible: selectedTextIndex == 0,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: upcomingevents.length,
                          itemBuilder: (context, index) {
                            return Posts(
                              imageUrl: upcomingevents[index].eventImage,
                              title: upcomingevents[index].eventTitle,
                              subtitle: upcomingevents[index].eventDetails,
                              eventDate: upcomingevents[index].eventDate,
                            );
                          },
                        ),
                      ),
                    ),
                    Visibility(
                      visible: selectedTextIndex == 1,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: pastevents.length,
                          itemBuilder: (context, index) {
                            return Posts(
                              imageUrl: upcomingevents[index].eventImage,
                              title: upcomingevents[index].eventTitle,
                              subtitle: upcomingevents[index].eventDetails,
                              eventDate: upcomingevents[index].eventDate,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
