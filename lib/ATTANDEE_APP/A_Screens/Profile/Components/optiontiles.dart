import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/OTP.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_HomeFeeds/O_HomeFeed.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/O_MainProfile.dart';

class IconTextRow extends StatelessWidget {
  final String iconData;
  final String text;

  IconTextRow({required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            SizedBox(
              width: 30,
              child: SvgPicture.asset(
                iconData,
              ),
            ),
            SizedBox(width: 23.0),
            Text(
              text,
              style: TextStyle(
                color: Color(0xFF201335),
                fontSize: 16,
                fontFamily: 'SatoshiMedium',
                height: 1.1,
              ),
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFF545454), // Adjust the color as needed
          size: 20.0,
        ),
      ],
    );
  }
}

class IconTextRowSwitch extends StatefulWidget {
  final String iconData;
  final String text;

  IconTextRowSwitch({required this.iconData, required this.text});

  @override
  _IconTextRowSwitchState createState() => _IconTextRowSwitchState();
}

class _IconTextRowSwitchState extends State<IconTextRowSwitch> {
  bool isSwitched = false;

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
}



class IconTextRowSwitchOM extends StatefulWidget {
  final String iconData;
  final String text;

  IconTextRowSwitchOM({required this.iconData, required this.text});

  @override
  _IconTextRowSwitchOMState createState() => _IconTextRowSwitchOMState();
}

class _IconTextRowSwitchOMState extends State<IconTextRowSwitchOM> {
  bool isSwitched = false;

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
                if (isSwitched) {
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
      bool result = await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => O_HomeFeed(), // Replace YourNewPage with the actual widget/page you want to navigate to
        ),
      );

      // Update the switch based on the result
      setState(() {
        isSwitched = result ?? false;
      });
    });
  }
}