import 'package:flutter/material.dart';

import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Components/BrowseEventsTiles.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Components/TimeSelector.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Components/UpcomingEventsData.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Components/searchevents.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Filters.dart';

import '../EventDetails/EventDetailsV1.dart';

class BrowseEvents extends StatefulWidget {
  const BrowseEvents({super.key});

  @override
  State<BrowseEvents> createState() => _BrowseEventsState();
}

class _BrowseEventsState extends State<BrowseEvents> {
  final List<EventData> events = [
    EventData(
      eventTitle: 'Lagos Business School, Ikeja Lagos',
      eventImage: 'Assets/Images/Components/browseeventsexample1.jpg',
      eventDetails: 'Unleashing Africa’s Future with Bill Gates.',
      eventDate: 'June 21',
    ),
    EventData(
      eventTitle: 'Lagos Business School, Ikeja Lagos',
      eventImage: 'Assets/Images/Components/browseeventsexample2.jpg',
      eventDetails: 'Unleashing Africa’s Future with Bill Gates.',
      eventDate: 'June 21',
    ),
    EventData(
      eventTitle: 'Lagos Business School, Ikeja Lagos',
      eventImage: 'Assets/Images/Components/browseeventsexample3.png',
      eventDetails: 'Unleashing Africa’s Future with Bill Gates.',
      eventDate: 'June 21',
    ),
    // Add more events as needed
  ];

  void _searchevents() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SeatchEvents(); // Replace with your filter widget
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: mQuery.size.height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Upcoming Events text
                const Text(
                  "Upcoming\nevents",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 34,
                    fontFamily: 'SatoshiMedium',
                    height: 1.1,
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: _searchevents,
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(
                                  0xFF201335), // Set the color of the border
                              width: 1.2, // Set the width of the border
                            ),
                          ),
                          child: const Center(
                            child: Icon(Icons.search),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Container(
                        width:
                            40.0, // Set the width of the circular container
                        height:
                            40.0, // Set the height of the circular container
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(
                                0xFF201335), // Set the color of the border
                            width: 1.2, // Set the width of the border
                          ),
                        ),
                        child: const Center(
                          child: Icon(Icons.location_on_outlined),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Filters()),
                          );
                          // TODO: Add logic for Skip button if needed
                        },
                        child: Container(
                          width:
                              40.0, // Set the width of the circular container
                          height:
                              40.0, // Set the height of the circular container
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(
                                  0xFF201335), // Set the color of the border
                              width: 1.2, // Set the width of the border
                            ),
                          ),
                          child: const Center(
                            child: Icon(Icons.filter_alt_outlined),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            TimeSelector(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EventDetails()),
                      );
                    },
                    child: Column(
                      children: [
                        BrowseEventsTile(
                          eventTitle: events[index].eventTitle,
                          eventImage: events[index].eventImage,
                          eventDetails: events[index].eventDetails,
                          eventDate: events[index].eventDate,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.016,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
