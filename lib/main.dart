import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/close_otp.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/forgotPassword.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/newPassword_page.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Components/NearMe/EventsNearMe.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/connect_page.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/popup_page.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/stubConnect_landing.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/EventDetails/EventDetailsV1.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/MyTickets/Mytickets.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/PasswordSection/changePassword.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/PasswordSection/changePin.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/PasswordSection/setPin.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/MyCalender.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Inbox.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Location/Setlocation.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/conversation.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Splashes/Splash.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Splashes/SplashWelcome.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/fullarticle.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/gethelptiles.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/queries.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/GetHelp.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/SupportMain.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/CreateEventsMain.dart';

import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step2.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step4.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/eventSuccessMessage.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Profiles/ProfileDetails/Success.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/O_DashboardHome.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/ManageOrders/O_ManageOrders.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/ManageOrders/O_OrderDetails.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/ManageOrders/Refund.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_AttendeesList/Attendees.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_HomeFeeds/O_HomeFeed.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Messaging/message_board.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Messaging/message_page.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Notifications/Notifications_feed.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_ChangePin.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawSuccess.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/O_MainProfile.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/OrganizerMode/DocumentsForm/SuccessMessagePage.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/OrganizerMode/DocumentsForm/US_Individual.dart';
import 'package:stub_guys/SGConnectProfile.dart';

import 'ATTANDEE_APP/A_Screens/Support/GetHelpTopic.dart';
import 'ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step1.dart';
import 'ORGANISER_APP/O_Screens/Dashboard/Components/Profiles/ProfileDetails/EditProfile.dart';
import 'ORGANISER_APP/O_Screens/O_AttendeesList/AttendeeDetails.dart';
import 'ORGANISER_APP/O_Screens/O_Profile/Components/O_Notification.dart';

void main()
{
  runApp(DevicePreview(
    enabled: true,
    builder: (context)
    {
      return const MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build( BuildContext context) {
    return MaterialApp( 
        debugShowCheckedModeBanner: false,
        title: 'Stub Guys',
        theme: ThemeData(
          useMaterial3: true,
        ),
      // home: const O_HomeFeed()
      // home: EventSuccessMessage(),
      // home: Splash(),
      // home: SuccessMessagePage()
      // home: USIndividual(),
      home: Splash(),
    );
  }
}



