import 'package:flutter/material.dart';

class ChatsBuilder extends StatefulWidget {
  final String avatarImage; // Add image path or URL for the avatar
  final String senderName;
  final String messageText;
  final String timestamp;
  final bool hasUnreadMessages;
  final String pendingmessage;
  final VoidCallback? onTap;

  const ChatsBuilder({
    Key? key,
    required this.avatarImage,
    required this.senderName,
    required this.messageText,
    required this.timestamp,
    required this.pendingmessage,
    this.hasUnreadMessages = false,
    this.onTap,
  }) : super(key: key);

  @override
  State<ChatsBuilder> createState() => _ChatsBuilderState();
}

class _ChatsBuilderState extends State<ChatsBuilder> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10
        ),
        child: Row(
          children: [
            CircleAvatar(
              maxRadius: 20.0,
              backgroundImage: NetworkImage(widget.avatarImage),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.senderName,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 15.0,
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  truncateText(
                    widget.messageText,
                    35, // Adjust the number of characters before the ellipsis
                  ),
                  style: const TextStyle(
                    color: Color(0xFFE3E3E3),
                    fontSize: 12.0,
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.timestamp,
                  style: TextStyle(
                    color: Color(0xFFE3E3E3),
                    fontSize: 12.0,
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Stack(
                  alignment: Alignment(0, 0),
                  children: [
                    Icon(
                      size: 18.0,
                      Icons.circle,
                      color: widget.hasUnreadMessages ? Colors.red : Colors.transparent,
                    ),
                    Text(
                      widget.hasUnreadMessages ? widget.pendingmessage : "",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }
}
