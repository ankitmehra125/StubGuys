import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/connect_page.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/popup_page.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';

class StubConnectLanding extends StatefulWidget {
  const StubConnectLanding({super.key});

  @override
  State<StubConnectLanding> createState() => _StubConnectLandingState();
}

class _StubConnectLandingState extends State<StubConnectLanding> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
       body: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: mQuery.size.height*0.04,),
             Center(
               child: ProfilePicture(name: "",
                   radius: 36,
                   fontsize: 10,
                 img:  "https://s3-alpha-sig.figma.com/img/1c81/5fe8/858476640fd8bcb55419bd1cbced3bdc?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kIyCXuSAhULS6QTnkwOgGhtDW6r1-8GjirxOqZw9ueOj0imq7Iw1ecjkM6vsoDWeDKyDDQhRRXfENBXwWvlN24R5LCBtNvOAI4aD5PeaVp6r8SOlUi-rfbPIGgXUqg~b8hRcb9a0xwMgxcPsG3x2ExY5ScheGjToknz-m1lpOkDrY8M~O14iykTeYFX3vpe7GZVjBULB68GfDaAapdWzc1MHSFaRg6-uMVhS"
                     "cEBic4SBFGlWmtw7JufPfuDSoPw0aSy~DrPSsN0iQ1ZJMn7~XebjkaVBfsuNkHpcN~RcUY9Ty-mm8GbZfJxanWYEGzhWKAfztC0yEYGwkMvJ~OcI3A__",
               ),
             ),
             SizedBox(height: mQuery.size.height*0.01,),
             ProfilePicture(name: "",
               radius: 36,
               fontsize: 10,
               img:  "https://s3-alpha-sig.figma.com/img/27dc/a50f/b6a47601563bf3836212b85282c8b6cc?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cn1hLgNU07C6HwqxDgnFf8zQHnvP98j6MwxPzvXGutwAvq6glml3IIwisceXZvFa~AaH~FSM-0JoJfP2QMscIAEIbfl9N5UYlXfDznrXyWN-8OSUwMjrnJmsg2MiuW-Cu4SR2A0I1SPuov99Ft~YwFA0ZFUeobz1GjbNqCL8WxupqacU3SBzRZrFq~DTVoWGjuO-MPEjA80f-OCcaXWM~ruTRHHjptI59EdWq"
                   "8qY7M52DqdGtkZPSkYcbp3WVbG52VH5ij78MqiGImVg8Kweu4XNP~niw8FB9r2PCW5DDOMZfMG8REL-mpNFsCXyn6NJFRAR2vJRzco2X47BntmPGA__"      
             ),
             Center(
               child: Image.asset("Assets/Images/Icon/stubguys.png",
                 width: 42,
               ),
             ),
             Center(
               child: Text("StubGuys",style: TextStyle(
                 fontSize: 20,
                 fontFamily: 'SatoshiBold'
               ),),
             ),
             SizedBox(height: mQuery.size.height*0.02),
             Center(
               child: Text("Find New Friends",style: TextStyle(
                 fontSize: 30,
                 fontFamily: 'SatoshiBold',
                 color: Color(0xff201335)
               ),),
             ),
             Center(
               child: Text("And Connect with",style: TextStyle(
                   fontSize: 30,
                   fontFamily: 'SatoshiBold',
                   color: Color(0xff201335)
               ),),
             ),
             Center(
               child: Text("Professionals",style: TextStyle(
                   fontSize: 30,
                   fontFamily: 'SatoshiBold',
                   color: Color(0xff201335)
               ),),
             ),
             SizedBox(height: mQuery.size.height*0.02,),
             GestureDetector(
               onTap: ()
               {
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return ConnectsPage();
                 }));
               },
               child: Container(
                 width: double.infinity,
                 height: 55,
                 margin: EdgeInsets.symmetric(
                   horizontal: mQuery.size.width*0.22
                 ),
                 decoration: BoxDecoration(
                   color: Color(0xff201335),
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Center(
                   child: Text("Get Started",style: TextStyle(
                     fontSize: 16,
                     fontFamily: 'SatoshiBold',
                     color: Color(0xffF1F1F2)
                   ),),
                 ),
               ),
             ),
             SizedBox(height: mQuery.size.height*0.023,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.arrow_left,
                   size: 30,
                 ),
                 SizedBox(width: mQuery.size.width*0.03),
                 Text("Go Back",style: TextStyle(
                   fontSize: 16,
                   fontFamily: 'SatoshiBold'
                 ),)
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 ProfilePicture(name: "",
                     radius: 36,
                     fontsize: 10,
                     img:  "https://s3-alpha-sig.figma.com/img/99d5/fd9f/aa31010bc1c752cf21c630b1108cca92?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=j0CMo-oHynhH~XQqTi8nR~1nYchqf-A-cyENVHhHtoz9SWb26FgLNP8ottvU6a94fMos3XPAnLlBAj9hp9BL87hXrRKnTtfi-8u04dYu7D8dfPizIuDmqYie2sy6vuqGKA6Jthaeaqs-Teuo6PA359MQv8CsccKRScl4NcVsl4AqBgmA"
                         "JUpNf42K6GjwhGMEYFNX4D5DUUzJp6m2I4HCwPudO77nB8HLr1KhnGZV7NclW8LBm4VTa~qzVL7YwJLprKSmmzADkHxHBq-KLTLICQ0oP5-s5gsPPuXFgTa~f8vlV4sekJ8oPGF~3pJvwgieAIe512pQ5kacZZCPZ-2qAA__"
                 ),
               ],
             ),
             ProfilePicture(name: "",
                 radius: 36,
                 fontsize: 10,
                 img: "https://s3-alpha-sig.figma.com/img/c61b/bfb5/d82eb3bb998840854e41154942a18b2c?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GrtyClANvmx3JxKDtxIbKb1O99yx1pyJZONXCmPDfMsbSP-jfAMtvbvj-uVWA0Pe1DhbOL9oeVLAtlYxYeGaSwB9vLNtyBI5Zo2yo4v00NekQIVI6RCYhxb6vFzbw2~MZ6cvw0t0-gLT2BjfW6O1b2hLmqXqPShZItCKnM5WQ2iU80M6P-3CIKH-2SO2iBoo2JcN1v2vdQ2s7SdkcrjrSov0TFNV3nPfjzmfERi"
                     "Ip4XwRya1zKBdM3QbZJIqQNNYVsOZawXMSlPjuOG1pblFhEH9F~EP9LkBupLILD~4tEc5GOJ1QRETKejhZ4zOfczbwNAGDQpqW9Ml1Pz-whfCUw__"
             ),
           ],
         ),
       ),
    );
  }
}
