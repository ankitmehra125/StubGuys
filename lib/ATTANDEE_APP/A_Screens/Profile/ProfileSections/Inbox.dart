import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/Messages/DemoMessage.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Components/Messages/chats.dart';

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
                      SvgPicture.asset("Assets/Images/Icon/back.svg"),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        'Messages',
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 38.0,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                    ],
                  ),
                  Stack(children: [
                    SvgPicture.asset("Assets/Images/Icon/bell.svg"),
                    const Positioned(
                        top: 0,
                        right: 0,
                        child: Stack(
                          alignment: Alignment(0, 0),
                          children: [
                            Icon(
                              size: 17.0,
                              Icons.circle,
                              color: Colors.green,
                            ),
                            Text("5",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 9.0)),
                          ],
                        ))
                  ])
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
                  const Row(
                    children: [
                      Text(
                        'Unread',
                        style: TextStyle(
                          color: Color(0xFFE3E3E3),
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
                  const Row(
                    children: [
                      Text(
                        'All messages',
                        style: TextStyle(
                          color: Color(0xFFE3E3E3),
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
        return SizedBox(
          height: mQuery.size.height * 0.065,
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF1F1F2),
                  width: 1.0, // Unfocused border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF1F1F2),
                  width: 2.0, // Focused border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF1F1F2),
                  width: 1.0, // Unfocused border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: text,
              hintStyle: const TextStyle(color: Color(0xFFF1F1F2)),
              prefixIcon: Icon(
                icon,
                color: const Color(0xFFF1F1F2),
              ),
            ),
          ),
        );
      },
    );
  }
}
