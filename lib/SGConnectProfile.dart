import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SGConnectProfile extends StatefulWidget {
  const SGConnectProfile({Key? key}) : super(key: key);

  @override
  State<SGConnectProfile> createState() => _SGConnectProfileState();
}

class _SGConnectProfileState extends State<SGConnectProfile> {
  TextEditingController storeNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController gstinController = TextEditingController();

  final Map<String, String> userFeature = {
    'Display Name': 'Felix Oshimen',
    'Job Title': 'Business Owner/Event Planner',
  };

  final Map<String, String> moreFeature = {
    'Location': 'Austin, Texas',
    'Education': 'Yale University',
    'Zodiac': 'Capricorn',
    'Friendship Goals': 'Longterm, Short-term',
    'Height': '183cm',
    'Languages Spoken': 'English, French',
    'Family Plans': 'I want children',
    'COVID Vaccine': 'Vaccinated',
  };

  final List<Map<String, String>> interestData = [
    {"text": "Freelance"},
    {"text": "Business"},
    {"text": "Lifestyle"},
  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff201335),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            SizedBox(
              height: mQuery.size.height * 0.02,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.shield_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SvgPicture.asset("Assets/Images/sgprofile.svg"),
                    SizedBox(
                      height: mQuery.size.height * 0.02,
                    ),
                    const Text(
                      "Sandra Oshimen",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                        height: 1.1,
                      ),
                    ),
                    SizedBox(
                      height: mQuery.size.height * 0.01,
                    ),
                    const Text(
                      "@sandraoshimen",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF8F899A),
                        fontSize: 14,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("Assets/Images/redcross.svg"),
                  SvgPicture.asset("Assets/Images/call.svg"),
                  SvgPicture.asset("Assets/Images/chat.svg"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: mQuery.size.height * 0.02,
                  left: 16,
                  right: 16,
                  bottom: 20),
              child: const Row(
                children: [],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 1,
                      offset: const Offset(
                          3, 3), // changes the position of the shadow
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: userFeature.length,
                          itemBuilder: (context, index) {
                            final key = userFeature.keys.elementAt(index);
                            final value = userFeature[key];
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    key,
                                    style: const TextStyle(
                                      color: Color(0xFFD3D3D3),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                      height: 1.1,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    value ?? '',
                                    style: const TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 20,
                                      fontFamily: 'SatoshiBold',
                                      height: 1.1,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.02,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Interests",
                              style: TextStyle(
                                color: Color(0xFFD3D3D3),
                                fontSize: 14,
                                fontFamily: 'SatoshiMedium',
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: interestData.map((data) {
                            return CustomContainer(text: data['text']!);
                          }).toList(),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: moreFeature.length,
                          itemBuilder: (context, index) {
                            final key = moreFeature.keys.elementAt(index);
                            final value = moreFeature[key];
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    key,
                                    style: const TextStyle(
                                      color: Color(0xFFD3D3D3),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                      height: 1.1,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    value ?? '',
                                    style: const TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 20,
                                      fontFamily: 'SatoshiBold',
                                      height: 1.1,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String text;

  const CustomContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118,
      height: 45,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFF696D61),
            fontSize: 16,
            fontFamily: 'SatoshiBold',
            height: 1.1,
          ),
        ),
      ),
    );
  }
}
