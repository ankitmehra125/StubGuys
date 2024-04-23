import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Location/Location.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Notifications.dart/Notifications.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/Logout.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/optiontiles.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Editprofile.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Favourites.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/L&C/Language.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/SupportMain.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_ChangePin.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_ChnagePassword.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_Notification.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_OM_Button.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawMain.dart';
import 'package:badges/badges.dart' as badges;

class O_Profile extends StatefulWidget {
  const O_Profile({Key? key}) : super(key: key);

  @override
  State<O_Profile> createState() => _O_ProfileState();
}

class _O_ProfileState extends State<O_Profile> {
  void _showLogoutBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Logout();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          // Handle the back button press and pass the result back to the previous screen to indicate switch off
          Navigator.pop(context, false);
          return false;
        },
        child: Scaffold(
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
                        "More",
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 40,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                      Expanded(child: Container()),
                      // Help and support
                      Padding(
                        padding: EdgeInsets.only(
                            right: 12
                        ),
                        child: GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return NotificationPage() ;
                            }));
                          },
                          child: badges.Badge(
                            badgeStyle: badges.BadgeStyle(
                                badgeColor: Color(0xff8DC73F)
                            ),
                            badgeContent: Center(
                              child: Text("5",style: TextStyle(
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
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  // Profile Details
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap : ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return EditProfile();
                            }));
                          },
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset(
                                  'Assets/ORGANISER_APP/Images/O_Profile/profilecircle.svg',
                                ),
                                SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Image.asset(
                                      "Assets/Images/Icon/stubguys.png"),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "StubGuys Organizer",
                              style: TextStyle(
                                color: Color(0xFF201335),
                                fontSize: 20,
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.058,
                                child: ElevatedButton(
                                  onPressed: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const EditProfile()),
                                    )
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xFF201335),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          18.0), // Set border radius
                                    ),
                                    // Button text color
                                    side: const BorderSide(
                                        color: Color(0xFF201335),
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
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Favourites()),
                      )
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconTextRow(
                        iconData:
                            "Assets/Images/Components/Profile/p_inbox.svg",
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
                        MaterialPageRoute(builder: (context) => const NotificationPage()),
                      )
                    }, 
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconTextRow(
                        iconData:
                            "Assets/Images/Components/Profile/p_Notifications.svg",
                        text: "Notifications",
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
                        MaterialPageRoute(
                            builder: (context) => const PasswordPage()),
                      )
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconTextRow(
                        iconData:
                            "Assets/Images/Components/Profile/p_Pass.svg",
                        text: "Change Password",
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
                        MaterialPageRoute(
                            builder: (context) => const ChangePin()),
                      )
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconTextRow(
                        iconData:
                            "Assets/Images/Components/Profile/p_Pin.svg",
                        text: "Change your PIN",
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
                        MaterialPageRoute(builder: (context) => Language()),
                      )
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconTextRow(
                        iconData:
                            "Assets/Images/Components/Profile/p_language.svg",
                        text: "Language",
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
                        MaterialPageRoute(builder: (context) => WithdrawMain()),
                      )
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconTextRow(
                        iconData: "Assets/Images/Components/Profile/p_bank.svg",
                        text: "Withdraw Funds",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconTextRow(
                      iconData:
                          "Assets/Images/Components/Profile/p_gethelp.svg",
                      text: "Get Help",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: O_IconTextRowSwitchOM(
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
                    onTap:
                        _showLogoutBottomSheet, // Open the bottom sheet on tap
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconTextRow(
                        iconData:
                            "Assets/Images/Components/Profile/p_logout.svg",
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
        ));
  }
}
