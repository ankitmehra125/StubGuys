import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/EventOrganiserProfile/Organiser.dart';
import 'Components/Agenda.dart';
import 'Components/CircleImage.dart';
import 'Components/HorizontalImage.dart';
import 'Components/Sponsors.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

import 'GetTickets/Step1.dart';
import 'Intrested/Intrested.dart';
import 'LocationFeatures/LocationRow.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  String selectedContent = 'Content for Text 1';
  bool isDropdownOpen = false;

  bool isExpanded = false;
  final List<String> TimeList = [
    '9 AM',
    '10 AM',
    '11:30 AM',
    '9 AM',
    '3:30 AM',
    '9 AM',
    '8 PM',
  ];
  final List<String> AgendaList = [
    'Registration and Networking',
    'Opening Ceremony and Welcome Address',
    'Keynote Speech on “Harnessing Innovation for Sustainble Developent in Africa',
    'Lunch Break and Networking',
    'Workshop Session 1: “Building Entrepreneurial Mindsets”',
    'Coffee Break',
    'Networking Rececption and Cultural Showcase',
  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Image.asset("Assets/Images/EventDetails.jpg"),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.04),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              'Assets/Images/Components/ellipse1.svg'),
                                          const Icon(
                                            Icons.arrow_back,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  'Assets/Images/Components/redheartellipse.svg'),
                                              SvgPicture.asset(
                                                  'Assets/Images/Components/redheart.svg'),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 7.0),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    'Assets/Images/Components/redheartellipse.svg'),
                                                const Icon(
                                                  Icons.share,
                                                  size: 15,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                  ),
                                  Container(
                                    child: SvgPicture.asset(
                                        'Assets/Images/Components/playbutton.svg'),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.005,
                                  ),
                                  const Text(
                                    "Watch Video",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'SatoshiRegular',
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 17.0, right: 10.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Unleash Africa's Future with Bill Gates.",
                                            style: TextStyle(
                                              height: 1.2,
                                              fontSize: 34,
                                              color: Colors.white,
                                              fontFamily: 'SatoshiRegular',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Contents below video
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),

                          // Timing Section

                          /*Follow section*/
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Organizer()),
                                  );
                                },
                                child: Image.asset(
                                    "Assets/Images/Components/profilesmall.jpg"),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.04,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Organizer()),
                                  );
                                },
                                child: const Text(
                                  "PAN-AFRICAN \nINNOVATION FORUM.",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF201335),
                                    fontFamily: 'SatoshiMedium',
                                  ),
                                ),
                              ),

                              Expanded(child: Container()),
                              Container(
                                width: 80.0, // Customize the width
                                height: 40.0, // Customize the height
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  // Customize the border radius
                                  border: Border.all(
                                    color: const Color(0xFF8DC73F),
                                    // Customize the border color
                                    width: 1.0, // Customize the border width
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                      color: Color(
                                          0xFF8DC73F), // Customize the text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          // Location and timing
                          Row(
                            children: [
                              Container(
                                color: const Color(0xFF8DC73F),
                                width: 65,
                                height: 65,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "30",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: 'SatoshiBold',
                                      ),
                                    ),
                                    Text(
                                      "June",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SatoshiMedium',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // First Row
                                    Row(
                                      children: [
                                        Icon(OMIcons.locationOn,
                                            color: Color(0xFF8DC73F)),
                                        // Replace with your desired icon
                                        SizedBox(width: 3.0),
                                        // Adjust spacing as needed
                                        Text(
                                          "Lagos Business School, Ikeja, Lagos",
                                          style: TextStyle(
                                            height: 1.2,
                                            color: Colors.black,
                                            fontFamily: 'SatoshiRegular',
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    // Adjust vertical spacing as needed

                                    // Second Row
                                    Row(
                                      children: [
                                        Icon(OMIcons.accessTime,
                                            color: Color(0xFF8DC73F)),
                                        // Replace with your desired icon
                                        SizedBox(width: 3.0),
                                        // Adjust spacing as needed
                                        Text(
                                          "10:00 AM - 01:00PM",
                                          style: TextStyle(
                                            height: 1.2,
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontFamily: 'SatoshiRegular',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigate to the Checkout page
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom,
                                    ),
                                    child: const Intrested(),
                                  );
                                },
                              );
                            },
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: CircleImage(
                                        imageUrl:
                                            'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=996&t=st=1703761933~exp=1703762533~hmac=0b2208829e4e0177b9bde0a69ff8d17cfb509938a0419ccb2635f0bf7b5ab80d', // Replace with your image URL
                                        borderColor: Color(
                                            0xFF8DC73F), // Set your desired border color
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 28.0),
                                      child: CircleImage(
                                        imageUrl:
                                            'https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?w=996&t=st=1703762123~exp=1703762723~hmac=c5a651a814dd536844db268fc82cd42de51b590cb65f9ec48f4cb1262a4bc0eb',
                                        borderColor: Color(
                                            0xFF8DC73F), // Set your desired border color
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 56.0),
                                      child: CircleImage(
                                        imageUrl:
                                            'https://img.freepik.com/free-photo/portrait-young-man-with-dark-curly-hair_176532-8137.jpg?w=996&t=st=1703762170~exp=1703762770~hmac=800d922c050eae1c18b44afea15b941f688501f8de8392812229036fbd94accf',
                                        borderColor: Color(
                                            0xFF8DC73F), // Set your desired border color
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 84.0),
                                      child: CircleImage(
                                        imageUrl:
                                            'https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg?w=996&t=st=1703762180~exp=1703762780~hmac=e860193a6a3db29abe03ab50040bd3f8a6348253cac29b184a660b02e96d051e',
                                        borderColor: Color(
                                            0xFF8DC73F), // Set your desired border color
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 112.0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF8DC73F),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "2.5K+",
                                            style: TextStyle(
                                              height: 1.2,
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontFamily: 'SatoshiRegular',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                const Text(
                                  "Going",
                                  style: TextStyle(
                                    height: 1.2,
                                    fontSize: 12,
                                    color: Color(0xFF8DC73F),
                                    fontFamily: 'SatoshiMedium',
                                  ),
                                ),
                                Expanded(child: Container()),
                                const Text(
                                  "\$25.00",
                                  style: TextStyle(
                                    height: 1.2,
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'SatoshiMedium',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          const Text(
                            "About Event",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'SatoshiBold',
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'We’re celebrating our 30th edition of the  Pan African Youth Innovation Forum 2023. We will have Bill Gates as our guest speaker. exercitation ullamco laboris nisi '
                                'ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
                                'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia '
                                'deserunt mollit anim id est laborum.',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'SatoshiRegular',
                                ),
                                maxLines: isExpanded ? null : 5,
                                // Show only 3 lines initially
                                overflow: TextOverflow.ellipsis,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isExpanded = !isExpanded;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    isExpanded ? 'Read More' : 'Read Less',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF8DC73F),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          const Text(
                            "Location",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'SatoshiBold',
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Image.asset("Assets/Images/Components/Map.png"),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                          ),
                          const Text(
                            "Media Gallery",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'SatoshiBold',
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                        ],
                      ),
                    ),
                    HorizontalAssetImageList(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedContent = 'Content for Text 1';
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      "Agenda",
                                      style: TextStyle(
                                        color: selectedContent ==
                                                'Content for Text 1'
                                            ? const Color(0xFF201335)
                                            : const Color(0xFFF1F1F2),
                                        fontSize: 24,
                                        fontFamily: 'SatoshiBold',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    Container(
                                      height: 2.0,
                                      width: 32.0,
                                      decoration: BoxDecoration(
                                        color: selectedContent ==
                                                'Content for Text 1'
                                            ? const Color(0xFF201335)
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedContent = 'Content for Text 2';
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      "FAQ",
                                      style: TextStyle(
                                        color: selectedContent ==
                                                'Content for Text 2'
                                            ? const Color(0xFF201335)
                                            : const Color(0xFFF1F1F2),
                                        fontSize: 24,
                                        fontFamily: 'SatoshiBold',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    Container(
                                      height: 2.0,
                                      width: 32.0,
                                      decoration: BoxDecoration(
                                        color: selectedContent ==
                                                'Content for Text 2'
                                            ? const Color(0xFF201335)
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Conditionally display TextListViewBuilder based on the selected content
                          if (selectedContent == 'Content for Text 1')
                            TextListViewBuilder(
                              timeList: TimeList,
                              agendaList: AgendaList,
                            ),
                          // Conditionally display FAQ UI based on the selected content
                          if (selectedContent == 'Content for Text 2')
                            Padding(
                              padding: const EdgeInsets.only(top: 35.0),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isDropdownOpen = !isDropdownOpen;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      width: double.infinity,
                                      height: mQuery.size.height * 0.060,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0xFF959DA5)
                                                  .withOpacity(0.2),
                                              spreadRadius: 0,
                                              blurRadius: 10,
                                              offset: const Offset(0, 8),
                                            ),
                                          ],
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(6),
                                            topRight: Radius.circular(6),
                                          ),
                                          color: isDropdownOpen == true
                                              ? const Color(0xFF8DC73F)
                                              : const Color(0xFFFFFFFF)),
                                      child: Text(
                                        "When and where is the event taking place?",
                                        style: TextStyle(
                                            fontFamily: 'SatoshiMedium',
                                            fontSize: 16,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: isDropdownOpen,
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xffF1F1F2),
                                            width: 1),
                                        borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(4),
                                            bottomRight: Radius.circular(4)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: const Center(
                                          child: Text(
                                            "The event is designed "
                                            "for specify the target audience, such as"
                                            " professionals, students, "
                                            "enthusiasts, etc. who are interested in "
                                            "mention the relevant topic or field.",
                                            style: TextStyle(
                                                fontFamily: 'SatoshiMedium',
                                                fontSize: 16,
                                                color: Color(0xFF696D61)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),

                    /*
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Agenda",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ),
                    Agenda Section
                    TextListViewBuilder(
                      timeList: TimeList,
                      agendaList: AgendaList,
                    ),
                    */
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Sponsors",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Sponsors(
                            imagePath:
                                'Assets/Images/Components/TemoraryComponents/spon1.png',
                          ),
                          Sponsors(
                            imagePath:
                                'Assets/Images/Components/TemoraryComponents/spon2.png',
                          ),
                          Sponsors(
                            imagePath:
                                'Assets/Images/Components/TemoraryComponents/spon3.png',
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Location Features",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LocationSubRow(
                              'Assets/Images/Components/location01.svg',
                              'Restroom'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          LocationSubRow(
                              'Assets/Images/Components/location02.svg',
                              'Air Conditioner'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          LocationSubRow(
                              'Assets/Images/Components/location03.svg',
                              'Lunch'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15),
                      child: Divider(
                        thickness: 0.17,

                        color: Colors.grey, // Set your desired thickness
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Refund Policy:",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Refunds up to 7 days before event. Stubguys fees are non-refundable.",
                        style: TextStyle(
                          color: Color(0xFF696D61),
                          fontSize: 14,
                          fontFamily: 'SatoshiRegular',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigate to the Checkout page
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: const Step1(),
                    );
                  },
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF8DC73F),
                  borderRadius: BorderRadius.only(
                    topLeft:
                        Radius.circular(20.0), // Adjust the radius as needed
                    topRight:
                        Radius.circular(20.0), // Adjust the radius as needed
                  ),
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.09,
                padding: const EdgeInsets.all(16.0),

                // Customize the color of the button container
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Get Tickets",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SatoshiBold',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    SvgPicture.asset('Assets/Images/Components/getticket.svg')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
