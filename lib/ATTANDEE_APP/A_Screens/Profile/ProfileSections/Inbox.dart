import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/Messages/DemoMessage.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/Messages/chats.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';
import 'package:badges/badges.dart' as badges;

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: mQuery.size.height * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return Profile();
                            }));
                          },
                          child: SvgPicture.asset("Assets/Images/Icon/back.svg")),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text(
                        'Messages',
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 32.0,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 12
                    ),
                    child: badges.Badge(
                      badgeStyle: badges.BadgeStyle(
                        badgeColor: Color(0xff8DC73F)
                      ),
                      badgeContent: Text("3",style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'SatoshiBold'
                      ),),
                      child: SvgPicture.asset("Assets/Images/Icon/bell.svg"),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: mQuery.size.height * 0.043,
              ),
              UiHelper.CustomTextField(
                  searchController, "Search", Icons.search),
              SizedBox(
                height: mQuery.size.height * 0.035,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                    children: [
                      Text(
                        'Unread',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 14.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ],
                  ),
                  ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(height: 8.0),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: UnreadDemochatData.length,
                    itemBuilder: (context, index) {
                      var chatData = UnreadDemochatData[index];
                      return ChatsBuilder(
                        avatarImage: chatData['avatarImage'],
                        senderName: chatData['senderName'],
                        messageText: chatData['messageText'],
                        timestamp: chatData['timestamp'],
                        hasUnreadMessages: chatData['hasUnreadMessages'],
                        pendingmessage: chatData['pendingmessage'],
                        onTap: () {
                          // Handle tap action if needed
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                   Row(
                    children: [
                      Text(
                        'All messages',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 14.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    // separatorBuilder: (context, index) => SizedBox(height: 8.0),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: AllDemochatData.length,
                    itemBuilder: (context, index) {
                      var chatData = AllDemochatData[index];
                      return ChatsBuilder(
                        avatarImage: chatData['avatarImage'],
                        senderName: chatData['senderName'],
                        messageText: chatData['messageText'],
                        timestamp: chatData['timestamp'],
                        hasUnreadMessages: chatData['hasUnreadMessages'],
                        pendingmessage: chatData['pendingmessage'],
                        onTap: () {
                          // Handle tap action if needed
                        },
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UiHelper {
  static CustomTextField(
      TextEditingController controller, String text, IconData icon) {
    return Builder(
      builder: (context) {
        var mQuery = MediaQuery.of(context);
        return Container(
          height: mQuery.size.height * 0.065,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey.shade300
            )
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text,
              hintStyle: TextStyle(color: Colors.grey.shade300),
              prefixIcon: Icon(
                icon,
                  color: Colors.grey.shade300
              ),
            ),
          ),
        );
      },
    );
  }
}
