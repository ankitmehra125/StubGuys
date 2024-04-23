import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:io';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Components/Step4_HashTagFileds.dart/LocationFeatureField.dart';

/*-------------------------------------------------- Main */
class CE_Step4 extends StatefulWidget {
  const CE_Step4({Key? key}) : super(key: key);

  @override
  State<CE_Step4> createState() => _CE_Step4State();
}

class _CE_Step4State extends State<CE_Step4> {
  File? _imageFile;
  late String FileName;

  void _onLocationFeature(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 16.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Add Location Features and Amenities",
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 20,
                      fontFamily: 'SatoshiBold',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  HashTagLocation(
                    onTagAdded: (tag) {
                      setState(() {
                        tagsMap[tagsMap.length] = tag;
                      });
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF201335),
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily:
                            'SatoshiMedium', // You can adjust the font weight
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
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
                          'Assets/Images/Components/createevent4.svg',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Main content row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Additional details to your event',
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 18,
                          fontFamily:
                              'SatoshiMedium', // You can adjust the font weight
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Text(
                    "Location feature / amenities",
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
                      _onLocationFeature(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.075,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFF1F1F2), // Border color
                          width: 1, // Border width
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: tagsMap.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF6F7F9),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  height: 20.0,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        tagsMap[index] ?? "",
                                        style: const TextStyle(
                                          color: Color(0xFF5E6366),
                                          fontSize: 12,
                                          fontFamily: 'SatoshiMedium',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SvgPicture.asset("Assets/Images/PLUS.svg"),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  //Location
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "Add Location Features and Amenities",
                    style: TextStyle(
                      color: Color(0xff5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
