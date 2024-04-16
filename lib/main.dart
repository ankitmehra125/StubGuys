import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/close_otp.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/forgotPassword.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/newPassword_page.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/connect_page.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/popup_page.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/stubConnect_landing.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/MyCalender.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Splashes/Splash.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Splashes/SplashWelcome.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/GetHelp.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/SupportMain.dart';

import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step2.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/O_DashboardHome.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/O_MainProfile.dart';
import 'package:stub_guys/SGConnectProfile.dart';

import 'ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step1.dart';

void main()
{
  runApp(DevicePreview(
    enabled: true,
    builder: (context)
    {
      return MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
        debugShowCheckedModeBanner: false,
        title: 'Stub Guys',
        theme: ThemeData(
          useMaterial3: true,
        ),
      home: Splash(),
    );
  }
}
