import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/MyTickets/Components/ticket_details_row.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/MyTickets/Mytickets.dart';

class ShowQR extends StatefulWidget {
  const ShowQR({super.key});

  @override
  State<ShowQR> createState() => _ShowQRState();
}

class _ShowQRState extends State<ShowQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF201335),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const MyTickets()),
                      // );
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
                      child: Text(
                        'Stubguys Hangout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: MediaQuery.of(context).size.height * 0.02,
                                ),
                                SizedBox(
                                  width: 220,
                                  height: 76,
                                  //logowithname
                                  child: Image.asset(
                                      "Assets/Images/Components/addgwallet.jpg"),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 25.47,
                                      child: Image.asset(
                                          "Assets/Images/Icon/stubguys.png"),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    const Text(
                                      'Stubguys',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24.0,
                                        fontFamily: 'SatoshiBold',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                ),
                                SvgPicture.asset(
                                  'Assets/Images/Components/TemoraryComponents/qr.svg',
                                  height: 140.0,
                                  width: 140.0,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                const Text(
                                  'Name',
                                  style: TextStyle(
                                    color: Color(0xFF696D61),
                                    fontSize: 16.0,
                                    fontFamily: 'SatoshiRegular',
                                  ),
                                ),
                                const Text(
                                  'Cavil Lwang',
                                  style: TextStyle(
                                    color: Color(0xFF8DC73F),
                                    fontSize: 24.0,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                const ticket_details_row(
                                  title: "Event",
                                  titledetails: "Stubguys Hangout Event",
                                ),
                                const ticket_details_row(
                                  title: "Ticket #",
                                  titledetails: "2023STUB00024",
                                ),
                                const ticket_details_row(
                                  title: "Date",
                                  titledetails: "Mon, July 23, 2023\n9:00 AM WAT",
                                ),
                                const ticket_details_row(
                                  title: "Location",
                                  titledetails:
                                      "Lagos Business School, Ikeja, LAgos",
                                ),
                            
                                const Text(
                                  'Ticket 1 of 1',
                                  style: TextStyle(
                                    color: Color(0xFF201335),
                                    fontSize: 14.0,
                                    fontFamily: 'SatoshiMedium',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
