import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Notifications.dart/Notifications.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class NotificationsFeed extends StatefulWidget {
  const NotificationsFeed({Key? key}) : super(key: key);

  @override
  State<NotificationsFeed> createState() => _NotificationsFeedState();
}

class _NotificationsFeedState extends State<NotificationsFeed> {
  final List<Map<String, String>> notificationData = [
    {
      'name': 'Brandon K.',
      'message': 'bought two(2) tickets for your event Unleashing Africa’s Potential',
      'img': 'https://s3-alpha-sig.figma.com/img/4a35/f305/7518524012b74b8bee7b775c8c288d2a?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNE'
          'HN3O4&Signature=DBdp7Y4HYmTa5V~6WFBMpMedjdnuBSegjO4krnRLj-twf8d7-NC64Kz-677kpA4cwuF38Ht8213Ewom8~BgpfR58Q6ObviE9VXB3FzOCsgQy~jzMCG2J99GuB5z0DQuLvh-k5Hd2m-cpcduxi0QQN4FMJHdXUG7Q7WWDQjRpF6aerknLMkIX~Z-gbsCAhTm7Lv9FN876BvJxl1xB3mIiNUxavj0KvckSbW9A-9coPeG6N2rK3lNbjtoG-IPq76ywvjJ9r-MX2VYG20iBlqJ-NoQLOD8jutuhV4R6eenn13RbYwo0DsckmbxFE6-d3L0j2ZB~P~wsk~UwSMg05hXwwQ__'
    },
    {
      'name': 'Mike Holmes',
      'message': 'requested a refund',
      'img': "https://s3-alpha-sig.figma.com/img/802d/1cd6/e6974c3e57da157639e078b6966c7a9a?Expires=1714348800&Ke"
          "y-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=VqmWVPGhmexZywO8V9iTDJxzYUnBD-LLTk6W1gD2qXga28I6kKN3wIrTjDcu1e58E1J4Eu95Aiu2dNKJ~gp-0AVafZbngAOJBfVWb4RwNS7CkNDRhUxdz9IHxRnB897veroeWdiaDGh3NOrUqSmkW1p857viTXO57QBCDWdHcFGFv9kWE2soYh9qO-3Y-xu5hqrYWgoaTRIfI18bNtUS8Y1ArtFoaUgtPTFdc58hw~Er9wEapLSjdN2N4yIE4SgqkVeemW5JN573aFds8uSKxEzjceEReM~mF8~Z31ischiYTObMTwWRYLyABs1z5T4S-yAFaaDgDXf1iFi375rMQQ__"
    },
    {
      'name': 'Unleashing Africa’s Potential ',
      'message': 'Your event has 500 views today',
      'img': 'https://s3-alpha-sig.figma.com/img/23ee/7deb/996f1ac3a6ce276fb684d74803977bf2?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=TGEUQknEL3ojCGkJZUOk1uOdELgGf-6PXTjTZsx6LTdwN2b1YIqnb6sqhaYPs0jR9BJGg529J9DkC0jSVXWliAsgK7I6M11j~K4KN5ptug0dy51sSnhbVtPTz7SsurQNHjaDnSWuQKS~pCn8aFrnXRFLUvLJmfrCZhkcnB4un-EOi48AGnRxtmFptCLyN2bY9EagUnQzYpfvbjGNHgp1ej4mj8RB0R3Ml6KZTnpGO1N6~3yn1CuOU1Fr8D'
          'oUY7hesO1T~5TMwGXdHDMhUyMaD2gBkUN1gz~2WvwwceqOmgrzE57KVoxAiAgDPU257spKspEs5hpzHwECVM54HO7O8g__'
    },

  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mQuery.size.height * 0.06),
              Row(
                children: [
                  Text(
                    "Notifications",
                    style: TextStyle(
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff201335),
                      fontSize: 32,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                        'Assets/ORGANISER_APP/Icons/Dashboard/hamburger.svg'),
                  ),
                  SizedBox(width: mQuery.size.width * 0.045),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Color(0xff8DC73F),
                        ),
                        badgeContent: Text(
                          "3",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'SatoshiBold',
                              color: Colors.white),
                        ),
                        child: SvgPicture.asset(
                            'Assets/ORGANISER_APP/Icons/Dashboard/bell.svg'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height * 0.032),
              Text(
                "NEW (${notificationData.length})",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xffCBCBCB)),
              ),
              SizedBox(height: mQuery.size.height * 0.032),
              // Generate notification rows from the data
              for (var notification in notificationData) ...[
                buildNotificationRow(notification),
                SizedBox(height: mQuery.size.height * 0.03),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNotificationRow(Map<String, String> notification) {
    return Container(
      color: Color(0xffF8F8F8),
      child: Row(
        children: [
          ProfilePicture(
            name: "",
            radius: 28,
            fontsize: 12,
            img: notification['img'] ?? "",
          ),
          SizedBox(width: 8), // Add some space between profile picture and text
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: notification['name'] ?? "",
                    style: TextStyle(
                        fontFamily: 'SatoshiBold',
                        fontSize: 13,
                        color: Color(0xff141414)),
                  ),
                  TextSpan(
                    text: " ${notification['message']}",
                    style: TextStyle(
                        color: Color(0xff141414),
                        fontSize: 13,
                        fontFamily: 'SatoshiMedium'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
