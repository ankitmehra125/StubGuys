import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Profiles/ProfileDetails/CreateProfile.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Profiles/ProfileDetails/Demodata.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Profiles/ProfileDetails/EditProfile.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Profiles/ProfileDetails/ProfileDetails.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_AttendeesList/Attendees.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_HomeFeeds/O_HomeFeed.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Support/O_SupportMain.dart';
import 'dart:math' as math;

Color Bckcolor = const Color(0xffF0FFDD);
Color BorderColor = const Color(0xFF8DC73F);

class MyClickableText extends StatefulWidget {
  const MyClickableText({super.key});

  @override
  State<MyClickableText> createState() => _MyClickableTextState();
}

class _MyClickableTextState extends State<MyClickableText> {
  randomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }

  //Switchaccount
  void _switchaccountPopUp(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Account",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF201335),
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                        height: 1.1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const O_CreateOrganizer()),
                        );
                      },
                      child: const Row(
                        children: [
                          Icon(
                            Icons.add_circle_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "Add New",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xFF201335),
                              fontSize: 13,
                              fontFamily: 'SatoshiMedium',
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(profiles.length, (index) {
                      return Slidable(
                        key: ValueKey(index),
                        endActionPane:
                            ActionPane(motion: const ScrollMotion(), children: [
                          CustomSlidableAction(
                            // An action can be bigger than the others.
                            flex: 1,
                            onPressed: (context) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const O_EditOrganizer()),
                              );
                            },

                            backgroundColor: const Color(0xffDEFBB8),
                            foregroundColor: Colors.white,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.mode_edit_rounded,
                                  color: Color(0xff8DC73F),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Edit',
                                  style: TextStyle(
                                      color: Color(0xff8DC73F),
                                      fontSize: 8,
                                      fontFamily: 'SatoshiBold'),
                                ),
                              ],
                            ),
                          ),
                          CustomSlidableAction(
                            // An action can be bigger than the others.
                            flex: 1,
                            onPressed: (context) {},

                            backgroundColor: const Color(0xFF201335),
                            foregroundColor: Colors.white,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Details',
                                  style: TextStyle(
                                      fontSize: 8, fontFamily: 'SatoshiBold'),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: profiles[index]['status'] == 'Active'
                                  ? Border.symmetric(
                                      horizontal: BorderSide(
                                          color: BorderColor, width: 2))
                                  : const Border.symmetric(
                                      horizontal: BorderSide(
                                          color: Color(0xffffffff), width: 2)),
                              color: profiles[index]['status'] == 'Active'
                                  ? Bckcolor
                                  : Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 30, top: 10, bottom: 10, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 21.5,
                                      backgroundColor:
                                          profiles[index]['status'] == 'Active'
                                              ? const Color(0xff8DC73F)
                                              : randomColor(),
                                      child: Text(
                                        profiles[index]['name'][0],
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      profiles[index]['name'],
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Text(
                                  '${profiles[index]['eventCount']} events',
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
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
                    height: MediaQuery.of(context).size.height * 0.065,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff201335)),
                    child: const Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'SatoshiMedium'),
                      ),
                    ),
                    
                  ),
                ),
              ),
              SizedBox(height: 30.0,)
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Reports for",
            style: TextStyle(
              color: Color(0xFF201335),
              fontSize: 16,
              fontFamily: 'SatoshiBold',
              height: 1.1,
            ),
          ),
          GestureDetector(
            onTap: () {
              _switchaccountPopUp(context);
            },
            child: const Text(
              " Stubguys Organiser",
              style: TextStyle(
                color: Color(0xFF8DC73F),
                fontSize: 16,
                fontFamily: 'SatoshiBold',
                height: 1.1,
              ),
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Color(0xFF8DC73F),
          )
        ],
      ),
    );
  }
}
