import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Components/HashTextField.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Components/TimePicker.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step3.dart';
import 'package:table_calendar/table_calendar.dart';

class CE_Step2 extends StatefulWidget {
  const CE_Step2({super.key});

  @override
  State<CE_Step2> createState() => _CE_Step2State();
}

class _CE_Step2State extends State<CE_Step2> {
  String selectedEventOccur = "Single";
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  void _showCalendarPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: double.infinity, // Adjust the width as per your requirement
            child: TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.now(),
              lastDay: DateTime.now(),
            ),
          ),
        );
      },
    );
  }


  void _onOccurTypeSelected(String locationType) {
    // Close the bottom sheet
    setState(() {
      selectedEventOccur = locationType; // Update the selected account type
    });
    Navigator.of(context).pop();
  }

  void _onOccurType(BuildContext context) {
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
                          "Event Occurrence",
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
                      _onOccurTypeSelected("Single");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedEventOccur == "Single"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedEventOccur == "Single"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Single",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedEventOccur == "Single"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedEventOccur == "Single")
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
                      _onOccurTypeSelected("Recurring");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedEventOccur == "Recurring"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedEventOccur == "Recurring"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recurring",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedEventOccur == "Recurring"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedEventOccur == "Recurring")
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
                      _onOccurTypeSelected("TBA");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedEventOccur == "TBA"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedEventOccur == "TBA"
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
                                  color: selectedEventOccur == "TBA"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedEventOccur == "Savings")
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
                        selectedEventOccur = selectedEventOccur;
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

  void _onTimeSelector() {
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
                  TimePickerPage()
                ],
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                        SvgPicture.asset('Assets/Images/Components/cross.svg'),
                        const Text(
                          "Create Event",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 24,
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                        SvgPicture.asset(
                          'Assets/Images/Components/createevent2.svg',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  //Event occurence

                  const Text(
                    "Event Occurrence",
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
                      _onOccurType(context);
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
                              selectedEventOccur,
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
                  //sample text

                  const Row(
                    children: [
                      Text(
                        "Only happen once but can last more than a day",
                        style: TextStyle(
                          color: Color(0xFF5E6366),
                          fontSize: 10,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    "Event beginning date",
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
                      _showCalendarPopup(context);
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset("Assets/Images/Icon/cal.svg",
                             color : Color(0xff8DC73F)),
                            const SizedBox(width: 10.0),
                            const Text(
                              "07/16/2023",
                              style: TextStyle(
                                color: Color(0xFFABAFB1),
                                fontSize: 13,
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  const Text(
                    "Time of commencement",
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
                        child: GestureDetector(
                          onTap: () {
                            _selectTime(context);
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                              border: Border.all(
                                color: const Color(0xFFF1F1F2),
                              ),
                            ),
                            child: Text(
                              '${_selectedTime.hour}:${_selectedTime.minute.toString().padLeft(2, '0')}',
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    "Event closing date",
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
                    onTap: () {},
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset("Assets/Images/Icon/cal.svg",
                                color : Color(0xff8DC73F)),
                            const SizedBox(width: 10.0),
                            const Text(
                              "07/16/2023",
                              style: TextStyle(
                                color: Color(0xFFABAFB1),
                                fontSize: 13,
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    "Time of conclusion",
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
                          labelText: '10:00PM',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    "Timezone",
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
                      // _onOccurType(context);
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
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "(GMT-05:00) United States (New York)...",
                              style: TextStyle(
                                color: Color(0xFFABAFB1),
                                fontSize: 13,
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFF5E6366),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.13,
                  ),
                  //buttons
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
                                builder: (context) => CE_Step3()),
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
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
