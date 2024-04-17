import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/MyTickets/Mytickets.dart';

import '../Components/TicketDetails.dart';
import '../EventDetailsV1.dart';


class Step4 extends StatefulWidget {
  const Step4({Key? key}) : super(key: key);

  @override
  State<Step4> createState() => _Step4State();
}

class _Step4State extends State<Step4> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: const Color(0xFF201335),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the Material Page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EventDetails()),
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          'Assets/Images/Components/step1_back.svg',
                          height: 40.0,
                          width: 40.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 50,
                      height: 50,
                      child: SvgPicture.asset(
                        'Assets/Images/Components/step1_bell.svg',
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.045,
                    ),
                    SvgPicture.asset(
                      'Assets/Images/Components/TicketBooked.svg',
                      height: 80.0,
                      width: 80.0,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      "Ticket purchase successful!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    const Text(
                      "It’s in the bag!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'SatoshiRegular',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            TktDetails(),
                            Expanded(child: SizedBox()),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyTickets()),
                                    );
                                  },
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                      const Color(0xFF8DC73F),
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0),
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 55.0,
                                    child: const Center(
                                      child: Text(
                                        'My Tickets',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontFamily: 'SatoshiBold',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: mQuery.size.height*0.023,)
                          ],
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
