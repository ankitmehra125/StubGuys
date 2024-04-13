import 'package:flutter/material.dart';

class LocationBottomPanel extends StatefulWidget {
  const LocationBottomPanel({super.key});

  @override
  State<LocationBottomPanel> createState() => _LocationBottomPanelState();
}

class _LocationBottomPanelState extends State<LocationBottomPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
                20.0), // Set your desired top left border radius
            topRight: Radius.circular(
                20.0), // Set your desired top right border radius
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFF8DC73F),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Lekki, Lagos |",
                    style: TextStyle(
                      color: Color(0xFF8DC73F),
                      fontSize: 24,
                      fontFamily: 'SatoshiBold',
                      height: 1.1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: double.infinity,
                height: 1.0,
                color: const Color(0xFF8DC73F),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.share_location,
                    color: Color(0xFF545454),
                    size: 18.0,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Use my current location",
                    style: TextStyle(
                      color: Color(0xFF696D61),
                      fontSize: 16,
                      fontFamily: 'SatoshiRegular',
                      height: 1.1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.messenger_outline_sharp,
                    color: Color(0xFF545454),
                    size: 18.0,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Virtual events",
                    style: TextStyle(
                      color: Color(0xFF696D61),
                      fontSize: 16,
                      fontFamily: 'SatoshiRegular',
                      height: 1.1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
               Text(
                "Recent Searches",
                style: TextStyle(
                  color: Color(0xFF8DC73F),
                  fontSize: 16,
                  fontFamily: 'SatoshiBold',
                  height: 1.1,
                ),
              ),SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "Austin, Texas",
                style: TextStyle(
                  color: Color(0xFF696D61),
                  fontSize: 16,
                  fontFamily: 'SatoshiRegular',
                  height: 1.1,
                ),
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "Miami, Florida",
                style: TextStyle(
                  color: Color(0xFF696D61),
                  fontSize: 16,
                  fontFamily: 'SatoshiRegular',
                  height: 1.1,
                ),
              ), SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
             
            ],
          ),
        ));
  }
}
