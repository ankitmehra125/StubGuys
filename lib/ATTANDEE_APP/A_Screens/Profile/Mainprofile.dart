import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/MyCalender.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Inbox.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/L&C/L&C.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Location/Location.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Notifications.dart/Notifications.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/Logout.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/optiontiles.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Editprofile.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Favourites.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/L&C/Language.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/SupportMain.dart';
import 'package:badges/badges.dart' as badges;

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void _showLogoutBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Logout();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              //topbar
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "My Profile",
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 40,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  Expanded(child: Container()),
                  // Help and support
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Supportmain()),
                      )
                    },
                    child: SvgPicture.asset(
                      'Assets/Images/Icon/helpsupport.svg',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      right: 12
                    ),
                    child: GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Notifications();
                        }));
                      },
                      child: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Color(0xff8DC73F)
                        ),
                        badgeContent: Center(
                          child: Text("3",style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'SatoshiBold'
                          ),),
                        ),
                        child: SvgPicture.asset(
                          'Assets/Images/Icon/bell.svg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              // Profile Details
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return EditProfile();
                      }));
                    },
                    child: SizedBox(
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
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Cavil Inwang",
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 21,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                      const Text(
                        "lordcavil@gmail.com",
                        style: TextStyle(
                          color: Color(0xFF696D61),
                          fontSize: 12,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.058,
                          child: ElevatedButton(
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EditProfile()),
                              )
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF8DC73F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    18.0), // Set border radius
                              ),
                              // Button text color
                              side: const BorderSide(
                                  color: Color(0xFF8DC73F),
                                  width: 2.0), // Border color and width
                              elevation: 0, // Remove button shadow
                              minimumSize: const Size(
                                  120, 40), // Set minimum width and height
                            ),
                            child: const Text(
                              "Edit Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'SatoshiBold',
                                height: 1.1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Favourites()),
                  )
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconTextRow(
                    iconData: "Assets/Images/Components/Profile/p_heart.svg",
                    text: "Favourites",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MyCalendar();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconTextRow(
                    iconData: "Assets/Images/Components/Profile/p_calender.svg",
                    text: "My Calendar",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatPage()),
                  )
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconTextRow(
                    iconData: "Assets/Images/Components/Profile/p_inbox.svg",
                    text: "Inbox",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LanguageAndCurrency()),
                  )
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconTextRow(
                    iconData: "Assets/Images/Components/Profile/p_language.svg",
                    text: "Language and Currency",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Location()),
                  )
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconTextRow(
                    iconData: "Assets/Images/Components/Profile/p_location.svg",
                    text: "Location",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Supportmain();
                    }));
                  },
                  child: IconTextRow(
                    iconData: "Assets/Images/Components/Profile/p_gethelp.svg",
                    text: "Get help",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconTextRowSwitchOM(
                  iconData: "Assets/Images/Components/Profile/p_om.svg",
                  text: "Organiser Mode",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconTextRowSwitch(
                  iconData: "Assets/Images/Components/Profile/p_dark.svg",
                  text: "Switch to Dark mode",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GestureDetector(
                onTap: _showLogoutBottomSheet, // Open the bottom sheet on tap
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconTextRow(
                    iconData: "Assets/Images/Components/Profile/p_logout.svg",
                    text: "Log Out",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
