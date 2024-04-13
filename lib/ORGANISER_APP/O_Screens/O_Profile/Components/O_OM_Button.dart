import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';

class O_IconTextRowSwitchOM extends StatefulWidget {
  final String iconData;
  final String text;

  O_IconTextRowSwitchOM({required this.iconData, required this.text});

  @override
  _O_IconTextRowSwitchOMState createState() => _O_IconTextRowSwitchOMState();
}

class _O_IconTextRowSwitchOMState extends State<O_IconTextRowSwitchOM> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: 2.0),
            SizedBox(
              width: 30,
              child: SvgPicture.asset(
                widget.iconData,
              ),
            ),
            SizedBox(width: 20.0),
            Text(
              widget.text,
              style: const TextStyle(
                color: Color(0xFF201335),
                fontSize: 16,
                fontFamily: 'SatoshiMedium',
              ),
            ),
          ],
        ),
        Spacer(),
        SizedBox(
          height: 35.0,
          width: 40.0, // Set your preferred width
          child: Switch.adaptive(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                if (isSwitched = true) {
                  _navigateToNewPageAfterDelay();
                }
              });
            },
            activeTrackColor: Color(0xff8DC73F),
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Color(0xFFD9D9D9),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            splashRadius: 0.0,
          ),
        )
      ],
    );
  }

  void _navigateToNewPageAfterDelay() {
    Future.delayed(Duration(seconds: 1), () async {
      // Navigate to the new page and wait for the result
      bool result = await Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              HomeFeed(), // Replace YourNewPage with the actual widget/page you want to navigate to
        ),
      );

      // Update the switch based on the result
      setState(() {
        isSwitched = result ?? false;
      });
    });
  }
}
