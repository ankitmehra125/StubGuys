import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:badges/badges.dart' as badges;
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step1.dart';

import '../../../ATTANDEE_APP/A_Screens/Profile/ProfileSections/Notifications.dart/Notifications.dart';

class CreateEventsMain extends StatefulWidget {
  CreateEventsMain({Key? key}) : super(key: key);

  @override
  State<CreateEventsMain> createState() => _CreateEventsMainState();
}

bool isEmpty = false;

class _CreateEventsMainState extends State<CreateEventsMain> {
  int _currentIndex = 2;
  List<Map<String, dynamic>> originalEventData = [
    {
      'goingCount': '2.5k',
      'imagePath': 'Assets/Images/EventDetails.jpg',
      'title': "Unleashing Africa's Future with Bill Gates",
      'iconPath': 'Assets/Images/Icon/Calender.svg',
      'date': 'February 9, 2024',
    },
    {
      'goingCount': '140',
      'imagePath': 'Assets/Images/EventDetails.jpg',
      'title': "StubGuys Launch 2023",
      'iconPath': 'Assets/Images/Icon/Calender.svg',
      'date': 'February 7, 2024',
    },
    {
      'goingCount': '140',
      'imagePath': 'Assets/Images/EventDetails.jpg',
      'title': "StubGuys Launch 2023",
      'iconPath': 'Assets/Images/Icon/Calender.svg',
      'date': 'February 7, 2024',
    },
    {
      'goingCount': '140',
      'imagePath': 'Assets/Images/EventDetails.jpg',
      'title': "Unleashing Africa's Future with Bill Gates",
      'iconPath': 'Assets/Images/Icon/Calender.svg',
      'date': 'February 5, 2024',
    },
    // Add more event data maps as needed
  ];

  List<Map<String, dynamic>> eventData = [];

  Color filterColor1 = Colors.black;
  Color filterColor2 = Colors.grey;
  Color filterColor3 = Colors.grey;
  Color filterColor4 = Colors.grey;
  int activeFilter = 1;

  @override
  void initState() {
    super.initState();
    // Initialize eventData with originalEventData
    eventData.addAll(originalEventData);
  }

  void _setActiveFilter(int filterNumber) {
    setState(() {
      activeFilter = filterNumber;
      filterColor1 = filterNumber == 1 ? Colors.black : Colors.grey;
      filterColor2 = filterNumber == 2 ? Colors.black : Colors.grey;
      filterColor3 = filterNumber == 3 ? Colors.black : Colors.grey;
      filterColor4 = filterNumber == 4 ? Colors.black : Colors.grey;

      // Reset eventData to originalEventData
      eventData.clear();
      eventData.addAll(originalEventData);

      switch (filterNumber) {
        case 1:
          // Show all events (already in originalEventData)
          break;
        case 2:
          final now = DateTime.now();
          eventData.retainWhere((event) {
            final eventDate = _parseDate(event['date']);
            final today = DateTime(now.year, now.month, now.day); // Current day
            return eventDate.isAtSameMomentAs(today);
          });
          break;
        case 3:
          final now = DateTime.now();
          eventData.retainWhere((event) {
            final eventDate = _parseDate(event['date']);
            return eventDate.isAtSameMomentAs(now) || eventDate.isAfter(now);
          });
          break;
        case 4:
          final now = DateTime.now();
          final today = DateTime(now.year, now.month, now.day);
          eventData.retainWhere((event) {
            final eventDate = _parseDate(event['date']);
            // Check if the event date is before the current date
            return eventDate.isBefore(today);
          });
          break;

        default:
          break;
      }
    });
  }

  DateTime _parseDate(String dateString) {
    final months = {
      'January': 1,
      'February': 2,
      'March': 3,
      'April': 4,
      'May': 5,
      'June': 6,
      'July': 7,
      'August': 8,
      'September': 9,
      'October': 10,
      'November': 11,
      'December': 12,
    };

    final parts = dateString.split(' ');
    final month = months[parts[0]];
    final day = int.parse(parts[1].replaceAll(',', ''));
    final year = int.parse(parts[2]);

    return DateTime(year, month!, day);
  }

  @override
  Widget build(BuildContext context) {
    if (originalEventData.isEmpty) {
      setState(() {
        isEmpty = true;
      });
    }
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "My Events",
                          style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 32,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Assets/Images/Icon/hamburger.svg"),
                            const SizedBox(width: 10),

                            GestureDetector(
                              onTap: ()
                              {
                                showModalBottomSheet(context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext context)
                                    {
                                      return Notifications();
                                    }
                                );
                              },
                              child: badges.Badge(
                                badgeContent: Text("3",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13
                                ),),
                                badgeStyle: badges.BadgeStyle(
                                  badgeColor: Color(0xff8DC73F),
                                ),
                                child: SvgPicture.asset("Assets/Images/Icon/bell.svg"),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildFilter("All", 1),
                          _buildFilter("Now", 2),
                          _buildFilter("Upcoming", 3),
                          _buildFilter("Past", 4),
                        ],
                      ),
                    ),
                    Stack(children: [
                      isEmpty == false
                          ? Container(
                              height: MediaQuery.of(context).size.height * 0.675,
                              child: Expanded(
                                child: ListView.builder(
                                  itemCount: eventData.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    Map<String, dynamic> event = eventData[index];
                                    return SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(height: MediaQuery.of(context).size.height * 0.3,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisAlignment: index == 0
                                                    ? MainAxisAlignment.end
                                                    : MainAxisAlignment.start,
                                                children: [
                                                  index != 0
                                                      ? Container(
                                                          height: MediaQuery.of(context).size.width * 0.335,
                                                          child: const DottedLine(
                                                            dashColor: Color(0xff8DC73F),
                                                            direction: Axis.vertical,
                                                          ),
                                                        )
                                                      : Container(),
                                                  Container(
                                                    height: MediaQuery.of(context).size.width * 0.1,
                                                    width: MediaQuery.of(context).size.width * 0.1,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xff8DC73F),
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(MediaQuery.of(context).size.height * 0.045),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "${event['goingCount']}",
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.02,
                                                    child: const Text(
                                                      "Going",
                                                      style: TextStyle(
                                                        height: 1,
                                                        fontFamily: 'Santoshi',
                                                        fontSize: 12,
                                                        color: Color(0xff8DC73F),
                                                      ),
                                                    ),
                                                  ),
                                                  (eventData.length - 1) != index
                                                      ? Container(
                                                          height:
                                                              MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.17,
                                                          child: const DottedLine(
                                                            dashColor:
                                                                Color(0xff8DC73F),
                                                            direction: Axis.vertical,
                                                          ),
                                                        )
                                                      : Container()
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: MediaQuery.of(context).size.height * 0.3,
                                            width : MediaQuery.of(context).size.width*0.9,
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.all(Radius.circular(10)),
                                                    child: Image.asset(
                                                      event['imagePath'],
                                                      // 'Assets/Images/Icon/MyEvent1.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(20.0),
                                                  child: SizedBox(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.7,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Text(
                                                          event['title'],
                                                          style: const TextStyle(
                                                              color: Colors.white,
                                                              fontFamily:
                                                                  'Santoshi',
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight.w700),
                                                        ),
                                                        Row(
                                                          children: [
                                                            SvgPicture.asset(
                                                                event['iconPath']),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text(
                                                              event['date'],
                                                              style: const TextStyle(
                                                                  color:
                                                                      Colors.white,
                                                                  fontFamily:
                                                                      'Santoshi',
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 20,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          : Container(
                              height: MediaQuery.of(context).size.height * 0.73,
                              width: double.infinity,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        'Assets/Images/Icon/Empty.svg'),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'You have not created any event yet.',
                                      style: TextStyle(
                                          fontFamily: 'Santoshi',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Color(0xff696D61)),
                                    )
                                  ]),
                            ),
                      Positioned(
                        bottom: 10,
                        right: 0,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.08),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return const CE_Step1();
                                  }));
                                },
                                child: Container(
                                  height: 88,
                                  width: 88,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff8DC73F),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(100),
                                    ),
                                    border: Border.all(
                                        color: const Color(0xffD6E2C7), width: 5),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ])
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            // height: 120.0,
            BottomNavigationBar(
          backgroundColor: const Color(0xFFDEFBB8),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF8DC73F),
          unselectedItemColor: const Color(0xFF696D61),
          iconSize: 30.0,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'Assets/ORGANISER_APP/Images/HomeFeed/home.svg',
                width: 26,
                height: 26,
                color: _currentIndex == 0
                    ? const Color(0xFF8DC73F)
                    : const Color(0xFF545454),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'Assets/ORGANISER_APP/Images/HomeFeed/ticket.svg',
                width: 24,
                height: 24,
                color: _currentIndex == 1
                    ? const Color(0xFF8DC73F)
                    : const Color(0xFF545454),
              ),
              label: 'Scan',
            ),
            const BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Color(0xFF8DC73F),
                radius: 24, // Adjust the radius as needed
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'Assets/ORGANISER_APP/Images/HomeFeed/orders.svg',
                width: 26,
                height: 26,
                color: _currentIndex == 3
                    ? const Color(0xFF8DC73F)
                    : const Color(0xFF545454),
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'Assets/ORGANISER_APP/Images/HomeFeed/more.svg',
                width: 26,
                height: 26,
                color: _currentIndex == 4
                    ? const Color(0xFF8DC73F)
                    : const Color(0xFF545454),
              ),
              label: 'More',
            ),
          ],
          selectedLabelStyle: const TextStyle(fontSize: 13.0),
          unselectedLabelStyle: const TextStyle(fontSize: 12.0),
        ));
  }

  Widget _buildFilter(String text, int filterNumber) {
    return GestureDetector(
      onTap: () {
        _setActiveFilter(filterNumber);
      },
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'SantoshiMedium',
          color: filterNumber == activeFilter ? Colors.black : Colors.grey,
          fontSize: 22,
        ),
      ),
    );
  }
}
