import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Components/eventpricetype.dart';

class FiltersBottom extends StatefulWidget {
  const FiltersBottom({super.key});

  @override
  State<FiltersBottom> createState() => _FiltersBottomState();
}

class _FiltersBottomState extends State<FiltersBottom> {
  List<String> FilterTypes = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.45,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column( 
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SvgPicture.asset("Assets/Images/divider.svg"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  "Filter by ticket type",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 16,
                    fontFamily: 'SatoshiBold',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    EventPriceType(
                      width: 130.0,
                      defaultColor: Colors.white,
                      activeColor: const Color(0xFFDEFBB8),
                      text: "Free",
                      onSelect: (isSelected) {
                        if (isSelected) {
                          FilterTypes.add("Free");
                        } else {
                          FilterTypes.remove("Free");
                        }
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    EventPriceType(
                      width: 130.0,
                      defaultColor: Colors.white,
                      activeColor: const Color(0xFFDEFBB8),
                      text: "Paid",
                      onSelect: (isSelected) {
                        if (isSelected) {
                          FilterTypes.add("Paid");
                        } else {
                          FilterTypes.remove("Paid");
                        }
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                const Text(
                  "Filter by Status",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 16,
                    fontFamily: 'SatoshiBold',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    EventPriceType(
                      width: 130.0,
                      defaultColor: Colors.white,
                      activeColor: const Color(0xFFDEFBB8),
                      text: "Active",
                      onSelect: (isSelected) {
                        if (isSelected) {
                          FilterTypes.add("Free");
                        } else {
                          FilterTypes.remove("Free");
                        }
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    EventPriceType(
                      width: 130.0,
                      defaultColor: Colors.white,
                      activeColor: const Color(0xFFDEFBB8),
                      text: "Past Events",
                      onSelect: (isSelected) {
                        if (isSelected) {
                          FilterTypes.add("Paid");
                        } else {
                          FilterTypes.remove("Paid");
                        }
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      
                      onPressed: () {
                        // Handle button press here
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.white,
                        minimumSize: const Size(181, 55),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(
                                0xFF8DC73F), // Specify the border color here
                            width: 2.0, // Specify the border width here
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: const Text(
                        'Reset',
                        style: TextStyle(
                          color: Color(0xFF8DC73F),
                          fontSize: 16,
                          fontFamily:
                              'SatoshiMedium', // You can adjust the font weight
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF201335),
                        minimumSize: const Size(181, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: const Text(
                        'Apply',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily:
                              'SatoshiMedium', // You can adjust the font weight
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
