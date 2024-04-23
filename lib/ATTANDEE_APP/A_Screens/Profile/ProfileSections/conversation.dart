import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/Messages/DemoMessage.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/Messages/chats.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';
import 'package:badges/badges.dart' as badges;

class Conversation extends StatefulWidget {
  const Conversation({super.key});
  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  TextEditingController messageController = TextEditingController();
  var userName = "Susan Kyle";
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: mQuery.size.height * 0.08,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios, color: Color(0xff696D61),
                size: mQuery.size.height*0.025,
                ),
                SizedBox(width: mQuery.size.width*0.032,),
                ProfilePicture(name: "",
                  radius: 20,
                  fontsize: 12,
                  img: "https://s3-alpha-sig.figma.com/img/85ab/deff/210e7f7e7a5305947e3d7e5f540c0622?Expires=1"
                      "714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZHQfyIY0R5~z8f~CNbXQ5eP5a~6QddWFaA4FaUnKr3r3VTpemYImeeBk3NzWM5IA0FvmO0vvwjOAu4m4FTu--C-CL1cDIIZYqR6xTZqCCiXA08f-hQfGnRnKnV4E5Wxwu2L2FUYJvpN05p0ldiV1e2ke7Y~eQufi9MqdjxSeckhPhexgs1kxPu9y84OtYZLIg4KpXJ65QmdNOVnt4-H5xKunmHTfuWyp83B~HEDPlZjcc0ijV7gIj7twuEMT3i7tzBjGv1z87SOSaZKzsivtM9Z47~QgLYuCdYYUQjMkhLuyM74Eg27mjvUjQdMGeezbm4KHvfhNzxpAVYomYzY7kw__",
                ),
                SizedBox(width: mQuery.size.width*0.023,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$userName",style: TextStyle(
                      fontFamily: 'SatoshiBold',
                      fontSize: 20,
                      color: Color(0xff201335)
                    ),
                    ),
                    Container(
                      width: mQuery.size.width*0.28,
                      height: mQuery.size.height*0.035,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xff8DC73F)
                        )
                      ),
                      child: Center(
                        child: Text("View Profile",style: TextStyle(
                          color: Color(0xff201335),
                          fontSize: 11,
                          fontFamily: 'SatoshiMedium'
                        ),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: mQuery.size.height*0.016,),
          Divider(
            color: Colors.grey.shade300,
          ),
          SizedBox(height: mQuery.size.height*0.042,),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ProfilePicture(name: "",
                          radius: 20,
                          fontsize: 12,
                          img: "https://s3-alpha-sig.figma.com/img/85ab/deff/210e7f7e7a5305947e3d7e5f540c0622?Expires=1"
                              "714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZHQfyIY0R5~z8f~CNbXQ5eP5a~6QddWFaA4FaUnKr3r3VTpemYImeeBk3NzWM5IA0FvmO0vvwjOAu4m4FTu--C-CL1cDIIZYqR6xTZqCCiXA08f-hQfGnRnKnV4E5Wxwu2L2FUYJvpN05p0ldiV1e2ke7Y~eQufi9MqdjxSeckhPhexgs1kxPu9y84OtYZLIg4KpXJ65QmdNOVnt4-H5xKunmHTfuWyp83B~HEDPlZjcc0ijV7gIj7twuEMT3i7tzBjGv1z87SOSaZKzsivtM9Z47~QgLYuCdYYUQjMkhLuyM74Eg27mjvUjQdMGeezbm4KHvfhNzxpAVYomYzY7kw__",
                        ),
                        SizedBox(width: mQuery.size.height*0.01,),
                        Container(
                          width: 260,
                          height: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  topRight: Radius.circular(15)
                              ),
                              color: Color(0xffF1F1F2)
                          ),
                          child: Center(
                            child: Text("So we should probably schedule right after",style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiMedium'
                            ),),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: mQuery.size.height*0.036,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 220,
                          height: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15)
                              ),
                              color: Color(0xff8DC73F)
                          ),
                          child: Center(
                            child: Text("I think it went to the Pending orders",style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontFamily: 'SatoshiMedium'
                            ),),
                          ),
                        ),
                        SizedBox(width: mQuery.size.height*0.01,),
                        ProfilePicture(name: "",
                          radius: 20,
                          fontsize: 12,
                          img: "https://s3-alpha-sig.figma.com/img/6855/17d3/4df54bf34525dbb196f99b9b7dafdb53?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PJuzbMg~oGNUQZ4Q6YZ6hzxtJPZSKYxeoJdZDWs0Qc3co8iThKTcRwezsw~m0S5zU~wnhfdNWwrjPGEQBqAZevFisI0GtjhUVLdYHT7g2196f8zdRVlopVszePREFgRbNVWPwZNGi7EEA1yUsV8b4hLGrad4tg7JQDetb4AAxEyH4oPBZMl1dL21zoZjttGWL-FMdU"
                              "o1pbT3INu6Kx~YmfqRYJ8ncAhzo3htk3y-X-QLOvprHa-ZBeVnTnzCgrjWtcJ0dsXvBglfYcZxGD4bH5w6Px3k6MfL-VCe40vVRVuGuRaHiA7D1Uh-oNL~Z4A9jw2pRbXVnlF8BUPi5as-FA__",
                        ),
                      ],
                    ),
                    SizedBox(height: mQuery.size.height*0.036,),
                    Row(
                      children: [
                        ProfilePicture(name: "",
                          radius: 20,
                          fontsize: 12,
                          img: "https://s3-alpha-sig.figma.com/img/85ab/deff/210e7f7e7a5305947e3d7e5f540c0622?Expires=1"
                              "714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZHQfyIY0R5~z8f~CNbXQ5eP5a~6QddWFaA4FaUnKr3r3VTpemYImeeBk3NzWM5IA0FvmO0vvwjOAu4m4FTu--C-CL1cDIIZYqR6xTZqCCiXA08f-hQfGnRnKnV4E5Wxwu2L2FUYJvpN05p0ldiV1e2ke7Y~eQufi9MqdjxSeckhPhexgs1kxPu9y84OtYZLIg4KpXJ65QmdNOVnt4-H5xKunmHTfuWyp83B~HEDPlZjcc0ijV7gIj7twuEMT3i7tzBjGv1z87SOSaZKzsivtM9Z47~QgLYuCdYYUQjMkhLuyM74Eg27mjvUjQdMGeezbm4KHvfhNzxpAVYomYzY7kw__",
                        ),
                        SizedBox(width: mQuery.size.height*0.01,),
                        Container(
                          width: 200,
                          height: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15)
                              ),
                              color: Color(0xffF1F1F2)
                          ),
                          child: Center(
                            child: Text("Ok let me check! I’ll let you know",style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiMedium'
                            ),),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: mQuery.size.height*0.023,),
          Container(
            width: double.infinity,
            height: mQuery.size.height*0.065,
            margin : const EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.03
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.grey.shade300
                )
            ),
            child: Row(
              children: [
                Icon(Icons.search,color: Colors.grey.shade300,),
                SizedBox(width: mQuery.size.width*0.016,),
                Expanded(
                  child: TextField(
                    cursorColor: Colors.grey,
                    controller: messageController,
                    decoration: InputDecoration(
                        hintText: "Type your message",
                        hintStyle: TextStyle(
                          color: Color(0xff696D61),
                          fontFamily: 'SatoshiMedium',
                        ),
                        border: InputBorder.none
                    ),
                  ),
                ),
                Container(
                  width: mQuery.size.width*0.2,
                  height: mQuery.size.height*0.045,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff201335)
                  ),
                  child: Center(
                    child: Text("Send",style: TextStyle(
                      color: Color(0xff8DC73F),
                      fontFamily: 'SatoshiMedium'
                    ),),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: mQuery.size.height*0.036,)
        ],
      ),
    );
  }
}

