import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Components/HashTextField.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step2.dart';

class CE_Step1 extends StatefulWidget {
  const CE_Step1({super.key});

  @override
  State<CE_Step1> createState() => _CE_Step1State();
}

class _CE_Step1State extends State<CE_Step1> {
  String myCategory = "Music";
  String selectedAccountType = "Checking";
  String selectedEventType = "Physical";
  String selectedEventTypeMainUpdated = "Public";

  set selectedCategory(String selectedCategory) {
    myCategory = selectedCategory;
  }

  void _onEventTypeSelected(String accountType) {
    // Close the bottom sheet
    setState(() {
      selectedEventTypeMainUpdated = accountType; // Update the selected account type
    });
    Navigator.of(context).pop();
  }

  void _onLocationTypeSelected(String locationType) {
    // Close the bottom sheet
    setState(() {
      selectedEventType = locationType; // Update the selected account type
    });
    Navigator.of(context).pop();
  }

  void _showEventType(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        return Container(
            height: mQuery.size.height * 0.42,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.048,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Event Type",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff201335),
                              fontFamily: 'SatoshiBold'),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Color(0xff545454),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onEventTypeSelected("Public");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedEventTypeMainUpdated == "Public"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedEventTypeMainUpdated == "Public"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Public",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedEventTypeMainUpdated == "Public"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedEventTypeMainUpdated == "Public")
                              if (selectedEventTypeMainUpdated == "Public")
                                SvgPicture.asset(
                                    "Assets/ORGANISER_APP/Images/O_Profile/prime_check-circle.svg")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onEventTypeSelected("Private");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedEventTypeMainUpdated == "Private"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedEventTypeMainUpdated == "Private"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Private",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedEventTypeMainUpdated == "Private"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedEventTypeMainUpdated == "Private")
                              SvgPicture.asset(
                                  "Assets/ORGANISER_APP/Images/O_Profile/prime_check-circle.svg")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedAccountType = selectedAccountType;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      width: double.infinity,
                      height: mQuery.size.height * 0.055,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff201335)),
                      child: const Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Color(0xffF1F1F2),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'SatoshiMedium'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }

  void _LocationType(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        return Container(
            height: mQuery.size.height * 0.5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.048,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff201335),
                              fontFamily: 'SatoshiBold'),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Color(0xff545454),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onLocationTypeSelected("Physical");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedEventType == "Physical"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedEventType == "Physical"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Physical",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedEventType == "Physical"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedEventType == "Physical")
                              SvgPicture.asset(
                                  "Assets/ORGANISER_APP/Images/O_Profile/prime_check-circle.svg")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onLocationTypeSelected("Virtual");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedEventType == "Virtual"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedEventType == "Virtual"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Virtual",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedEventType == "Virtual"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedEventType == "Virtual")
                              SvgPicture.asset(
                                  "Assets/ORGANISER_APP/Images/O_Profile/prime_check-circle.svg")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onLocationTypeSelected("TBA");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedEventType == "TBA"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedEventType == "TBA"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "TBA",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedEventType == "TBA"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedEventType == "Savings")
                              SvgPicture.asset(
                                  "Assets/ORGANISER_APP/Images/O_Profile/prime_check-circle.svg")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedEventType = selectedEventType;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      width: double.infinity,
                      height: mQuery.size.height * 0.055,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff201335)),
                      child: const Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Color(0xffF1F1F2),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'SatoshiMedium'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }

  final List<String> categories = [
    "Auto, Boat & Air",
    "Business & Professional",
    "Cinema, Media & Entertainment",
    "Community & Culture",
    "Education",
    "Family",
    "Fashion & Beauty",
    "Food & Drink",
    "Government & Public Affairs",
    "Health & Wellness",
    "Hobbies & Special Interest",
    "Music",
    "Other",
    "Philanthropy & Causes",
    "Science",
    "Seasonal & Holiday",
    "Sports & Physical Wellness",
    "Technology",
    "Theatrical & Visual Performances",
    "Travel",
    // Add more categories as needed
  ];
  void _showCategories(BuildContext context, Function(String) callback) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: 60,
                height: 7,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 18.0, right: 18.0, top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Choose Category",
                      style: TextStyle(
                        color: Color(0xFF201335),
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        callback(categories[index]);
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categories[index],
                              style: const TextStyle(
                                color: Color(0xFF201335),
                                fontSize: 14,
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: const Color(0xFFDEFBB8),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.14,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('Assets/Images/Components/cross.svg',
                       color: Color(0xff201335),),
                      const Text(
                        "Create Event",
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 24,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                      SvgPicture.asset(
                        'Assets/Images/Components/createevent1.svg',
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //Event title
                    const Text(
                      "Event Title",
                      style: TextStyle(
                        color: Color(0xFF5E6366),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.065,
                      child: Theme(
                        data: ThemeData(
                          textTheme: const TextTheme(
                            subtitle1: TextStyle(
                              fontSize: 13.0,
                              color: Color(0xFFABAFB1),
                              fontFamily: 'SatoshiRegular',
                            ),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF8DC73F)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF8DC73F)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            labelText: 'Keep it short and straight to the point',
                            suffixIcon: SvgPicture.asset(
                                "Assets/Images/Components/generate.svg"),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "0/80",
                          style: TextStyle(
                            color: Color(0xFFABAFB1),
                            fontSize: 12,
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    //Event Organizer
                    const Text(
                      "Event Organizer",
                      style: TextStyle(
                        color: Color(0xFF5E6366),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Theme(
                        data: ThemeData(
                          textTheme: const TextTheme(
                            subtitle1: TextStyle(
                              fontSize: 13.0,
                              color: Color(0xFFABAFB1),
                              fontFamily: 'SatoshiRegular',
                            ),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFFF1F1F2)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFFF1F1F2)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            labelText: 'Who is the organizer of this event',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                    ),
                    //Category
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //Event title
                    const Text(
                      "Category",
                      style: TextStyle(
                        color: Color(0xFF5E6366),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    //category
                    GestureDetector(
                      onTap: () {
                        _showCategories(context, (selectedCategory) {
                          setState(() {
                            this.selectedCategory =
                                selectedCategory; // Update the selected category value
                          });
                        });
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            border: Border.all(
                              color: const Color(0xFFF1F1F2),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                myCategory,
                                style: TextStyle(
                                  color: Color(0xFFABAFB1),
                                  fontSize: 13,
                                  fontFamily: 'SatoshiMedium',
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded,
                                  color: Color(0xFF5E6366))
                            ],
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      "Event type",
                      style: TextStyle(
                        color: Color(0xFF5E6366),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        _showEventType(context);
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            border: Border.all(
                              color: const Color(0xFFF1F1F2),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedEventTypeMainUpdated,
                                style: const TextStyle(
                                  color: Color(0xFFABAFB1),
                                  fontSize: 13,
                                  fontFamily: 'SatoshiMedium',
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF5E6366),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      "Hashtags",
                      style: TextStyle(
                        color: Color(0xFF5E6366),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const HashTag(),
                    //Location
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                            
                    const Text(
                      "Location",
                      style: TextStyle(
                        color: Color(0xFF5E6366),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                            
                    GestureDetector(
                      onTap: () {
                        _LocationType(context);
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            border: Border.all(
                              color: const Color(0xFFF1F1F2),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedEventType,
                                style: const TextStyle(
                                  color: Color(0xFFABAFB1),
                                  fontSize: 13,
                                  fontFamily: 'SatoshiMedium',
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF5E6366),
                              )
                            ],
                          )),
                    ),
                    //Venue Address
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //Event Organizer
                    if (selectedEventType == "Physical" ||
                        selectedEventType == "Virtual")
                      Text(
                        selectedEventType == "Physical"
                            ? "Venue address"
                            : "Meeting Link",
                        style: const TextStyle(
                          color: Color(0xFF5E6366),
                          fontSize: 12,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    if (selectedEventType == "TBA")
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                    if (selectedEventType == "Physical" ||
                        selectedEventType == "Virtual")
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: Theme(
                          data: ThemeData(
                            textTheme: const TextTheme(
                              subtitle1: TextStyle(
                                fontSize: 13.0,
                                color: Color(0xFFABAFB1),
                                fontFamily: 'SatoshiRegular',
                              ),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFF1F1F2)),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFF1F1F2)),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              labelText: selectedEventType == "Physical"
                                  ? "123 Address"
                                  : "https://",
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                            ),
                          ),
                        ),
                      ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50.0, // Adjust the width as needed
                          height: 50.0, // Adjust the height as needed
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF1F1F2),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Color(0xFF141619),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CE_Step2()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF201335),
                            minimumSize: const Size(181, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            'Save and Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily:
                                  'SatoshiMedium', // You can adjust the font weight
                            ),
                          ),
                        ),
                            
                      ],
                    ),
                    SizedBox(height: 12,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
