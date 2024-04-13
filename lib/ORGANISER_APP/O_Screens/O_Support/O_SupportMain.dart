import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/queries.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/GetHelp.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Support/O_GetHelp.dart';

class O_Supportmain extends StatefulWidget { 
  const O_Supportmain({super.key});

  @override
  State<O_Supportmain> createState() => _O_SupportmainState();
}

class _O_SupportmainState extends State<O_Supportmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: const Color(0xFFDEFBB8),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.245,
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 60.0),
                  child: Column(
                    children: [
                      //Cross and logo
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 50.0,
                              width: 50.0,
                              child: Image.asset(
                                  "Assets/Images/Icon/stubguys.png")),
                          SvgPicture.asset(
                            'Assets/Images/Icon/HelpSupport/cross.svg',
                            height: 40.0,
                            width: 40.0,
                            color: Color(0xff201335),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.016,
                      ),
                      // name section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Hello Cavil ",
                                style: TextStyle(
                                  color: Color(0xFF8DC73F),
                                  fontSize: 24,
                                  fontFamily: 'SatoshiBold',
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              SvgPicture.asset(
                                'Assets/Images/Icon/HelpSupport/palm.svg',
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                          const Text(
                            "How can we help? ",
                            style: TextStyle(
                              color: Color(0xff201335),
                              fontSize: 24,
                              fontFamily: 'SatoshiBold',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            // Main Support
            Container(
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: MediaQuery.of(context).size.height * 0.02,
              ), // Add the desired padding
              color: Colors.white,
              child: Column(
                children: [
                  // Message and help
                  Container(
                    width: double.infinity,
                    // height: MediaQuery.of(context).size.height * 0.12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: const Color(0xFFF1F1F2),
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        //Messages
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 12.0, top: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Messages",
                                style: TextStyle(
                                  color: Color(0xFF201335),
                                  fontSize: 14,
                                  fontFamily: 'SatoshiBold',
                                ),
                              ),
                              SvgPicture.asset(
                                'Assets/Images/Icon/HelpSupport/messages.svg',
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 12.0, right: 12.0, top: 12.0),
                          child: Divider(
                            color: Color(0xFFF1F1F2),
                            height: 20.0,
                            thickness: 1.0,
                          ),
                        ),
                        //Messages
                        GestureDetector(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const O_Gethelp()),
                            )
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0,
                                right: 15.0,
                                top: 12.0,
                                bottom: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Help",
                                  style: TextStyle(
                                    color: Color(0xFF201335),
                                    fontSize: 14,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                                SvgPicture.asset(
                                  'Assets/Images/Icon/HelpSupport/help.svg',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  // Send us a message
                  Container(
                      width: double.infinity,
                      // height: MediaQuery.of(context).size.height * 0.12,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: const Color(0xFFF1F1F2),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 12.0, top: 15.0, bottom: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Send us a message",
                                  style: TextStyle(
                                    color: Color(0xFF201335),
                                    fontSize: 14,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                                Text(
                                  "We typically reply in a few minutes",
                                  style: TextStyle(
                                    color: Color(0xFFC4C4C4),
                                    fontSize: 14,
                                    fontFamily: 'SatoshiRegular',
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              'Assets/Images/Icon/HelpSupport/send.svg',
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  // Search for help
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: const Color(0xFFF1F1F2),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 12.0, top: 12.0, bottom: 2.0),
                          child: Column(
                            children: [
                              TextField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(
                                      0xFFF9F9F9), // Set the background color
                                  hintText: 'Search for help',
                                  hintStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xFFABAFB1)),
                                  contentPadding: const EdgeInsets.all(10.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        12.0), // Set the border radius
                                    borderSide:
                                    BorderSide.none, // Set no border color
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ), // Add the search icon
                                ),
                              ),
                              const SizedBox(
                                height: 7.0,
                              ),
                              const Queries(
                                title: 'How to Create an Organizer Account',
                              ),
                              const Queries(
                                title: 'How do I contact Stubguys?',
                              ),
                              const Queries(
                                title: 'How Can I get a Refund for tickets?',
                              ),
                            ],
                          ))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  // Leave us a feedback
                  Container(
                    width: double.infinity,
                    // height: MediaQuery.of(context).size.height * 0.12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: const Color(0xFFF1F1F2),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 12.0, top: 15.0, bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Leave us a feedback or suggestion",
                            style: TextStyle(
                              color: Color(0xFF5E6366),
                              fontSize: 12,
                              fontFamily: 'SatoshiMedium',
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white, // Set the background color for TextField
                              border: Border.all(
                                color: const Color(
                                    0xFFF1F1F2), // Set the border color for Container
                                width:
                                2.0, // Set the border width for Container
                              ),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors
                                    .transparent, // Set a transparent fill color for TextField
                                hintText: 'Choose one...',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color(0xFFABAFB1)),
                                contentPadding: EdgeInsets.all(16.0),
                                border: InputBorder
                                    .none, // Remove the border for TextField
                                focusedBorder: InputBorder
                                    .none, // Remove the focused border for TextField
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            height: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color(
                                  0xFFF9F9F9), // Set the background color
                              border: Border.all(
                                color: const Color(
                                    0xFFF1F1F2), // Set the border color
                                width: 2.0, // Set the border width
                              ),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors
                                    .transparent, // Set a transparent fill color
                                hintText:
                                'Let us know what we should add next or leave a suggestion',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xFFABAFB1)),
                                contentPadding: EdgeInsets.only(left: 16,right: 16,bottom: 10),
                                border: InputBorder.none, // Remove the border
                                focusedBorder: InputBorder
                                    .none, // Remove the focused border
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  GestureDetector(
                    onTap: ()
                    {
                      // Add your button press logic here
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: Colors.black,
                              width: 1
                          )
                      ),
                      child: const Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 16,
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
