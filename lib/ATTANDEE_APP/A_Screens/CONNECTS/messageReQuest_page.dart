import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'connect_page.dart';
import 'messageAccept_page.dart';


class MessageRequestPage extends StatefulWidget {
  const MessageRequestPage({Key? key}) : super(key: key);

  @override
  State<MessageRequestPage> createState() => _MessageRequestPageState();
}

class _MessageRequestPageState extends State<MessageRequestPage> {

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
                    onTap:()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ConnectsPage();
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
                  ProfilePicture(
                    name: "",
                    img: "https://s3-alpha-sig.figma.com/img/bad2/8cbc/91e78b7d9b8f2bb7db12e33b8f5ed6b1?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UPlgdPkvEPNhKd"
                        "fthkqL0Z0bTa4PgKDKx~Ba1TazsVJRJaJe2nMjR6RHMeM5ZnT85BGxhA1UPGrLXykU04nI1VBboEzLioOj~RFO~tia8iIgJiqI4UGHf5fR5tfZ8XabHCtCRbvzB3ElN0VctnHO~FnDsCAfHfklXS1P1QYJ5RYvZHOP0~dw-HZ8CNhhEdi7Tl12McwXMUqlqewgsQo~7C68eoKg"
                        "dFPWbQcNW20ghuYSjmDuYS-u3UiEinH--DqDKGlepXyB353tf9GfOFoGZ6vPhelK2qvkiimfCRMNQ7AcUd4D2XG4DmHbReYy9cs~MLnmxcc8vgEeXrH4Gfftkg__",
                    radius: 25,
                    fontsize: 10,
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
                  )
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: mQuery.size.height*0.15,),
                      ProfilePicture(
                        name: "",
                        img: "https://s3-alpha-sig.figma.com/img/bad2/8cbc/91e78b7d9b8f2bb7db12e33b8f5ed6b1?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UPlgdPkvEPNhKdfthkqL0Z0bTa4PgKDKx"
                            "~Ba1TazsVJRJaJe2nMjR6RHMeM5ZnT85BGxhA1UPGrLXykU04nI1VBboEzLioOj~RFO~tia8iIgJiqI4UGHf5fR5tfZ8XabHCtCRbvzB3ElN0VctnHO~FnDsCAfHfklXS1P1QYJ5RYvZHOP"
                            "0~dw-HZ8CNhhEdi7Tl12McwXMUqlqewgsQo~7C68eoKgdFPWbQcNW20ghuYSjmDuYS-u3UiEinH--DqDKGlepXyB353tf9GfOFoGZ6vPhelK2qvkiimfCRMNQ7AcUd4D2XG4DmHbReYy9cs~MLnmxcc8vgEeXrH4Gfftkg__",
                        radius: 45,
                        fontsize: 10,
                      ),
                     SizedBox(height: mQuery.size.height*0.02,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         RichText(
                           text: TextSpan(
                             children: [
                               TextSpan(
                                 text: "Someone from ",style: TextStyle(
                                   fontFamily: 'SatoshiMedium',
                                 fontSize: 16,
                                 color: Colors.black
                               )
                               ),
                               TextSpan(
                                   text: "Unleashing Africa's ",style: TextStyle(
                                   fontFamily: 'SatoshiBold',
                                   fontSize: 18,
                                   color: Colors.black
                               )
                               ),
                             ]
                           ),
                         ),
                       ],
                     ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Potential” event",style: TextStyle(
                                      fontFamily: 'SatoshiBold',
                                      fontSize: 18,
                                      color: Colors.black
                                  )
                                  ),
                                  TextSpan(
                                      text: " wants to connect with",style: TextStyle(
                                      fontFamily: 'SatoshiMedium',
                                      fontSize: 16,
                                      color: Colors.black
                                  )
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                      Text("you.",style: TextStyle(
                          fontFamily: 'SatoshiMedium',
                          fontSize: 16,
                          color: Colors.black
                      )),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MessageAcceptPage();
                          }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: mQuery.size.height*0.065,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff201335)
                          ),
                          child: Center(
                            child: Text("Accept",style: TextStyle(
                              fontFamily: 'SatoshiBold',
                              color: Color(0xffF1F1F2),
                              fontSize: 16
                            ),)
                          ),
                        ),
                      ),

                      SizedBox(height: mQuery.size.height*0.03,),
                      Container(
                        width: double.infinity,
                        height: mQuery.size.height*0.065,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0xffFF3D00)
                            )
                        ),
                        child: Center(
                          child: Text("Decline",style: TextStyle(
                              fontFamily: 'SatoshiBold',
                              color: Color(0xffFF3D00),
                              fontSize: 16
                          ),),
                        ),
                      ),
                      SizedBox(height: mQuery.size.height*0.05,),
                    ],
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
