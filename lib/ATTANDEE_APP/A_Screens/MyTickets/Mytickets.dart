import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/MyTickets/Components/ticketduration.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/MyTickets/ShowQr.dart';

class MyTickets extends StatefulWidget {
  const MyTickets({Key? key}) : super(key: key);

  @override
  State<MyTickets> createState() => _MyTicketsState();
}

class _MyTicketsState extends State<MyTickets> {
  int numberofevents = 5;
  String _selectedButton = 'Button 1';

  void _showqr() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return const ShowQR();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: numberofevents == 1 ? 25.0 : 16.0),
        child: ListView(
          children: [
            Row(
              children: [
                const Text(
                  "Tickets",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 30,
                    fontFamily: 'SatoshiMedium',
                    height: 1.1,
                  ),
                ),
                SizedBox(width: 6,),
                Expanded(
                  child: ticketduration(
                    onButtonSelected: _handleButtonSelection,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "${numberofevents} events",
              style: TextStyle(
                color: _selectedButton == 'Button 1'
                    ? Color(0xFF201335)
                    : Colors.transparent,
                fontSize: 16,
                fontFamily: 'SatoshiBold',
                height: 1.1,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            if (_selectedButton == 'Button 1')
              ContainerSlider(
                containerCount: numberofevents,
                showQRFunction: _showqr,
              )
            else if (_selectedButton == 'Button 2')
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100.0,
                      ),
                      const SizedBox(
                        width: 155,
                        child: Text(
                          "You don’t have any completed events",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 16,
                            fontFamily: 'SatoshiBold',
                            height: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35.0,
                      ),
                      SvgPicture.asset('Assets/Images/Components/Bored.svg'),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _handleButtonSelection(String buttonValue) {
    setState(() {
      _selectedButton = buttonValue;
    });
    // Optionally add logic to show different widgets based on the selected button
    if (_selectedButton == 'Button 1') {
      ContainerSlider(containerCount: numberofevents, showQRFunction: _showqr);
      // Show ContainerSlider for 'Button 1'
      // ...
    } else if (_selectedButton == 'Button 2') {
      const Text("Hello");
      // Show a different widget for 'Button 2', e.g., a text widget
      // ...
    }
  }
}

class ContainerSlider extends StatelessWidget {
  final int containerCount;
  final VoidCallback showQRFunction;

  ContainerSlider({required this.containerCount, required this.showQRFunction});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          containerCount,
          (index) =>
              ContainerItem(index: index, showQRFunction: showQRFunction),
        ),
      ),
    );
  }
}

class ContainerItem extends StatelessWidget {
  final int index;
  final VoidCallback showQRFunction;

  ContainerItem({required this.index, required this.showQRFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(30.0),
        ),
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.55,
        margin: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    "Assets/Images/Components/browseeventsexample3.png",
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 15.0,
                      top: 20.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Show QR Code
                        GestureDetector(
                          onTap: showQRFunction,
                          child: Container(
                            width: 106,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xFF8DC73F),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: const Center(
                              child: Text(
                                "Show QR Code",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'SatoshiMedium',
                                  height: 1.1,
                                ),
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
            Column(
              children: [
                Expanded(child: Container()),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFDEFBB8),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Stubguys Launch 2023",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 18,
                            fontFamily: 'SatoshiMedium',
                            height: 1.1,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.035,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "November 1",
                                    style: TextStyle(
                                      color: Color(0xFF201335),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  Text(
                                    "Date",
                                    style: TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 12,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                            ),
                            const SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "6 PM",
                                    style: TextStyle(
                                      color: Color(0xFF201335),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  Text(
                                    "Time",
                                    style: TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 12,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "2",
                                    style: TextStyle(
                                      color: Color(0xFF201335),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  Text(
                                    "Tickets",
                                    style: TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 12,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                            ),
                            const SizedBox(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "General Admission",
                                    style: TextStyle(
                                      color: Color(0xFF201335),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  Text(
                                    "Type",
                                    style: TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 12,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        const SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "STUBG019200399012",
                                style: TextStyle(
                                  color: Color(0xFF201335),
                                  fontSize: 14,
                                  fontFamily: 'SatoshiMedium',
                                ),
                              ),
                              Text(
                                "Ticket #",
                                style: TextStyle(
                                  color: Color(0xFF696D61),
                                  fontSize: 12,
                                  fontFamily: 'SatoshiMedium',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
