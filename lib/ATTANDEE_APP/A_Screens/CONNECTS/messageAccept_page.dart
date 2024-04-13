import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/profileEdite_page.dart';

import 'messageReQuest_page.dart';


class MessageAcceptPage extends StatefulWidget {
  const MessageAcceptPage({Key? key}) : super(key: key);

  @override
  State<MessageAcceptPage> createState() => _MessageAcceptPageState();
}

class _MessageAcceptPageState extends State<MessageAcceptPage> {
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff201335),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height * 0.058,
                bottom: mQuery.size.height * 0.03,
                left: mQuery.size.width * 0.045,
                right: mQuery.size.width * 0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return MessageRequestPage();
                      }));
                    },
                    child: SvgPicture.asset(
                      'Assets/Images/Icon/HelpSupport/back.svg',
                      height: 20.0,
                      width: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.02,
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ProfileEditePage();
                      }));
                    },
                    child: ProfilePicture(
                      name: "",
                      img: "https://s3-alpha-sig.figma.com/img/bad2/8cbc/91e78b7d9b8f2bb7db12e33b8f5ed6b1?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UPlgdPkvEPNhKdfthkqL0Z0bTa4PgKDKx~Ba1TazsVJRJaJe2nMjR6RHMeM5ZnT85BGxhA1UPGrLXykU04nI1VBboEzLioOj~RFO~tia8iIgJiqI4UGHf5fR5tfZ8XabHCtCRbvzB3ElN0VctnHO~FnDsCAfHfklXS1P1QYJ5RYvZHOP0~dw-HZ8CNhhEdi7Tl12McwXMUqlqewgsQo~7C68eoKgdFPWbQcNW20ghuYSjmDuY"
                          "S-u3UiEinH--DqDKGlepXyB353tf9GfOFoGZ6vPhelK2qvkiimfCRMNQ7AcUd4D2XG4DmHbReYy9cs~MLnmxcc8vgEeXrH4Gfftkg__",
                      radius: 25,
                      fontsize: 10,
                    ),
                  ),
                  SizedBox(width: mQuery.size.width*0.035,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Susan Kyle",style: TextStyle(
                          fontFamily: 'SatoshiBold',
                          fontSize: 20,
                          color: Colors.white
                      ),),
                      Container(
                        width: mQuery.size.width*0.28,
                        height: mQuery.size.height*0.03,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: Color(0xff8DC73F)
                            )
                        ),
                        child: Center(
                          child: Text("View Profile",style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'SatoshiRegular'
                          ),),
                        ),
                      )
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    width: mQuery.size.width*0.08,
                      height: mQuery.size.height*0.06,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff2d2141)
                      ),
                      child: Center(
                          child: SvgPicture.asset("Assets/ORGANISER_APP/Images/O_Profile/call.svg",
                           width: mQuery.size.width*0.04,))),
                  SizedBox(width: mQuery.size.width*0.05,),
                  Container(
                      width: mQuery.size.width*0.08,
                      height: mQuery.size.height*0.06,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          color: Color(0xff2d2141)
                      ),
                      child: Center(
                          child: SvgPicture.asset("Assets/ORGANISER_APP/Images/O_Profile/flag2.svg",
                            width: mQuery.size.width*0.04,))),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: mQuery.size.height * 0.028,
                    left: mQuery.size.width * 0.045,
                    right: mQuery.size.width * 0.045,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQuery.size.height*0.15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("Assets/ORGANISER_APP/Images/O_Profile/prime_check-circle.svg",
                            width: mQuery.size.width*0.18,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Great! You can now connect each other.",style: TextStyle(
                                 fontSize: 16,
                                 fontFamily: 'SatoshiMedium'
                            ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Be the first to break the ice.",style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'SatoshiMedium'
                            ),),
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.18,),
                        Container(
                          width: mQuery.size.width*0.7,
                          height: mQuery.size.height*0.045,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff8DC73F),
                            ),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(
                            child: Text("Greetings! Your profile caugh my eye.",style: TextStyle(
                              color: Color(0xff8DC73F),
                              fontSize: 14,
                              fontFamily: 'SatoshiRegular'
                            ),),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.02,),
                        Container(
                          width: mQuery.size.width*0.85,
                          height: mQuery.size.height*0.045,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff8DC73F),
                              ),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(
                            child: Text("Hi there! Your back ground seems fascinating.",style: TextStyle(
                                color: Color(0xff8DC73F),
                                fontSize: 14,
                                fontFamily: 'SatoshiRegular'
                            ),),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.02,),
                        Container(
                          width: mQuery.size.width*0.7,
                          height: mQuery.size.height*0.045,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff8DC73F),
                              ),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(
                            child: Text("Hello! I hope you enjoyed the event.",style: TextStyle(
                                color: Color(0xff8DC73F),
                                fontSize: 14,
                                fontFamily: 'SatoshiRegular'
                            ),),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.03,),
                        Row(
                          children: [
                            SvgPicture.asset("Assets/ORGANISER_APP/Images/O_Profile/attachment.svg",),
                            SizedBox(width: mQuery.size.width*0.023,),
                            Container(
                              width : mQuery.size.width*0.64,
                              height: mQuery.size.height*0.065,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffF1F1F2)
                              ),
                              child: TextField(
                                controller: messageController,
                                cursorColor: Colors.black54,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: mQuery.size.width*0.03,
                                    right: mQuery.size.width*0.02,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Write your message",
                                  hintStyle: TextStyle(
                                     fontSize: 16,
                                    color: Color(0xff696D61),
                                    fontFamily: 'SatoshiRegular'
                                  )
                                ),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            SvgPicture.asset("Assets/ORGANISER_APP/Images/O_Profile/camera.svg",),
                            SizedBox(width: mQuery.size.width*0.036,),
                            SvgPicture.asset("Assets/ORGANISER_APP/Images/O_Profile/mic.svg",),
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.04,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
