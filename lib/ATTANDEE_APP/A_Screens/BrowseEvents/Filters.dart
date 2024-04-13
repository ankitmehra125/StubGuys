import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Components/FilterByCategories/Categories.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/Components/eventpricetype.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  // Add a list to keep track of selected categories and event types
  List<String> selectedCategories = [];
  List<String> selectedEventTypes = [];

  // Function to handle the reset button
  void resetFilters() {
    setState(() {
      selectedCategories.clear();
      selectedEventTypes.clear();
    });
  }

  // Function to handle the apply button (you can implement your logic here)
  void applyFilters() {
    // Implement your logic for applying filters
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text(
                "Filters by category",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34.0,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Categories(
                        width: 130.0,
                        defaultColor: Colors.white,
                        activeColor: const Color(0xFFDEFBB8),
                        text: "music",
                        imageUrl:
                            'https://cdn.pixabay.com/photo/2016/03/16/23/55/flea-market-1262036_1280.jpg',
                        onSelect: (isSelected) {
                          if (isSelected) {
                            selectedCategories.add("music");
                          } else {
                            selectedCategories.remove("music");
                          }
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Categories(
                        width: 150.0,
                        defaultColor: Colors.white,
                        activeColor: const Color(0xFFDEFBB8),
                        text: "art",
                        imageUrl:
                            'https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_1280.jpg',
                        onSelect: (isSelected) {
                          if (isSelected) {
                            selectedCategories.add("art");
                          } else {
                            selectedCategories.remove("art");
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Row(
                    children: [
                      Categories(
                        width: 130.0,
                        defaultColor: Colors.white,
                        activeColor: const Color(0xFFDEFBB8),
                        text: "sport",
                        imageUrl:
                            'https://images.pexels.com/photos/248547/pexels-photo-248547.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        onSelect: (isSelected) {
                          if (isSelected) {
                            selectedCategories.add("sport");
                          } else {
                            selectedCategories.remove("sport");
                          }
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Categories(
                        width: 180.0,
                        defaultColor: Colors.white,
                        activeColor: const Color(0xFFDEFBB8),
                        text: "conferences",
                        imageUrl:
                            'https://images.unsplash.com/photo-1591115765373-5207764f72e7?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        onSelect: (isSelected) {
                          if (isSelected) {
                            selectedCategories.add("conferences");
                          } else {
                            selectedCategories.remove("conferences");
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Row(
                    children: [
                      Categories(
                        width: 130.0,
                        defaultColor: Colors.white,
                        activeColor: const Color(0xFFDEFBB8),
                        text: "festivals",
                        imageUrl:
                            'https://cdn.pixabay.com/photo/2013/09/08/19/54/fireworks-180553_1280.jpg',
                        onSelect: (isSelected) {
                          if (isSelected) {
                            selectedCategories.add("festivals");
                          } else {
                            selectedCategories.remove("festivals");
                          }
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Categories(
                        width: 160.0,
                        defaultColor: Colors.white,
                        activeColor: const Color(0xFFDEFBB8),
                        text: "technology",
                        imageUrl:
                            'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_1280.jpg',
                        onSelect: (isSelected) {
                          if (isSelected) {
                            selectedCategories.add("technology");
                          } else {
                            selectedCategories.remove("technology");
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Row(
                    children: [
                      Categories(
                        width: 140.0,
                        defaultColor: Colors.white,
                        activeColor: const Color(0xFFDEFBB8),
                        text: "concerts",
                        imageUrl:
                            'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662_1280.jpg',
                        onSelect: (isSelected) {
                          if (isSelected) {
                            selectedCategories.add("concerts");
                          } else {
                            selectedCategories.remove("concerts");
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text(
                "Filter by Event Type",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34.0,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  EventPriceType(
                    width: 130.0,
                    defaultColor: Colors.white,
                    activeColor: const Color(0xFFDEFBB8),
                    text: "Location",
                    onSelect: (isSelected) {
                      if (isSelected) {
                        selectedEventTypes.add("Location");
                      } else {
                        selectedEventTypes.remove("Location");
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
                    text: "Virtual",
                    onSelect: (isSelected) {
                      if (isSelected) {
                        selectedEventTypes.add("Virtual");
                      } else {
                        selectedEventTypes.remove("Virtual");
                      }
                    },
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text(
                "Filter by Price",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34.0,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
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
                        selectedEventTypes.add("Free");
                      } else {
                        selectedEventTypes.remove("Free");
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
                        selectedEventTypes.add("Paid");
                      } else {
                        selectedEventTypes.remove("Paid");
                      }
                    },
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Divider(
                  thickness: 0.17,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.065,
                      child: ElevatedButton(
                        onPressed: resetFilters,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                18.0), // Set border radius
                          ),
                          primary:
                              Colors.white, // Button color when not pressed
                          onPrimary: Colors.black, // Button text color
                          side: BorderSide(
                              color: Color(0xFF696D61),
                              width: 1.0), // Border color and width
                          elevation: 0, // Remove button shadow
                          minimumSize:
                              Size(120, 40), // Set minimum width and height
                        ), 
                        child: const Text(
                          "Reset",
                          style: TextStyle(
                            color: Color(0xFF696D61),
                            fontSize: 14,
                            fontFamily: 'SatoshiBold',
                            height: 1.1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.065,
                      child: ElevatedButton(
                        onPressed: applyFilters,
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF8DC73F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                18.0), // Set border radius
                          ),
                          // Button text color
                          side: BorderSide(
                              color: Color(0xFF8DC73F),
                              width: 2.0), // Border color and width
                          elevation: 0, // Remove button shadow
                          minimumSize:
                              Size(120, 40), // Set minimum width and height
                        ),
                        child: const Text(
                          "Apply",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SatoshiBold',
                            height: 1.1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
