import 'package:flutter/material.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_AttendeesList/Components/FilterBottom.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_AttendeesList/Components/UserTile.dart';

class O_Attendees extends StatefulWidget {
  const O_Attendees({super.key});
 
  @override
  State<O_Attendees> createState() => O__AttendeesState();
}

class O__AttendeesState extends State<O_Attendees> {
    void _searchevents() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return FiltersBottom(); // Replace with your filter widget
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Color(0xFF201335),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Attendees",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 32,
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
                Row(
                  children: [
                    Container(
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
                        child: Icon(Icons.ios_share_outlined),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: _searchevents,
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFDEFBB8),
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
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
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
                  ],
                ),
              ],
            ),
            // ListView Builder for Attendees
            Expanded(
              child: ListView.builder(
                itemCount: attendeesData.length,
                itemBuilder: (context, index) {
                  return UserTile(data: attendeesData[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
