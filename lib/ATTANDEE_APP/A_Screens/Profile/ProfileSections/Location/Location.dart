import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/Location/Setlocation.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        // onTap: () => {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Profile()),
                        //   )
                        // },
                        child: SvgPicture.asset(
                          'Assets/Images/Components/black_back.svg',
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      const Text(
                        'Location',
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 38.0,
                          height: 1.1,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  const Text(
                    'Your location is set to',
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 16.0,
                      height: 1.1,
                      fontFamily: 'SatoshiBold',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  //Mail location selector
                  Row(
                    children: [
                      const Text(
                        'Lekki, Lagos',
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 24.0,
                          height: 1.1,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SetLocation()),
                          )
                        },
                        child: Container(
                          width: 90,
                          height: 27,
                          decoration: BoxDecoration(
                            color: const Color(0xFFDEFBB8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "Change this",
                              style: TextStyle(
                                color: Color(0xFF696D61),
                                fontSize: 10,
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ))
        ]));
  }
}
