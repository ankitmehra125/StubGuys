import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';

class picInterest extends StatefulWidget {
  const picInterest({Key? key});

  @override
  State<picInterest> createState() => _picInterestState();
}

class _picInterestState extends State<picInterest> {
  Color _svgColor1 = Colors.white;
  Color _svgColor2 = Colors.white;
  Color _svgColor3 = Colors.white;
  Color _svgColor4 = Colors.white;
  Color _svgColor5 = Colors.white;
  Color _svgColor6 = Colors.white;
  Color _svgColor7 = Colors.white;
  Color _svgColor8 = Colors.white;
  Color _svgColor9 = Colors.white;
  Color _svgColor10 = Colors.white;
  Color _svgColor11 = Colors.white;
  Color _svgColor12 = Colors.white;
  Color _svgColor13 = Colors.white;
  Color _svgColor14 = Colors.white;
  // Add more _svgColor variables as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            _buildInterestWidget(
              textleft: 15,
              texttop: 35,
              title: 'Painting',
              top: 10,
              left: -10,
              svgPath: "Assets/epic/11.svg",
              svgColor: _svgColor1,
              onTap: () {
                setState(() {
                  _svgColor1 = _svgColor1 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 25,
              texttop: 35,
              title: 'Travel',
              top: 10,
              left: MediaQuery.of(context).size.width * 0.19,
              svgPath: "Assets/epic/2.svg",
              svgColor: _svgColor2,
              onTap: () {
                setState(() {
                  _svgColor2 = _svgColor2 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 35,
              texttop: 55,
              title: 'Lifestyle',
              top: 0,
              left: MediaQuery.of(context).size.width * 0.45,
              svgPath: "Assets/epic/33.svg",
              svgColor: _svgColor3,
              onTap: () {
                setState(() {
                  _svgColor3 = _svgColor3 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 15,
              texttop: 30,
              title: 'Science',
              top: 0,
              left: MediaQuery.of(context).size.width * 0.78,
              svgPath: "Assets/epic/44.svg",
              svgColor: _svgColor4,
              onTap: () {
                setState(() {
                  _svgColor4 = _svgColor4 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 15,
              texttop: 50,
              title: 'Adventure\n   Sports',
              top: 110,
              left: 0,
              svgPath: "Assets/epic/55.svg",
              svgColor: _svgColor5,
              onTap: () {
                setState(() {
                  _svgColor5 = _svgColor5 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 25,
              texttop: 35,
              title: 'Music',
              top: 120,
              left: MediaQuery.of(context).size.width * 0.32,
              svgPath: "Assets/epic/6.svg",
              svgColor: _svgColor6,
              onTap: () {
                setState(() {
                  _svgColor6 = _svgColor6 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 25,
              texttop: 35,
              title: 'Acting',
              top: 160,
              left: MediaQuery.of(context).size.width * 0.54,
              svgPath: "Assets/epic/7.svg",
              svgColor: _svgColor7,
              onTap: () {
                setState(() {
                  _svgColor7 = _svgColor7 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 25,
              texttop: 55,
              title: 'Make-up',
              top: 100,
              left: MediaQuery.of(context).size.width * 0.78,
              svgPath: "Assets/epic/88.svg",
              svgColor: _svgColor8,
              onTap: () {
                setState(() {
                  _svgColor8 = _svgColor8 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 35,
              texttop: 40,
              title: 'Sports',
              top: 265,
              left: 0,
              svgPath: "Assets/epic/9.svg",
              svgColor: _svgColor9,
              onTap: () {
                setState(() {
                  _svgColor9 = _svgColor9 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 35,
              texttop: 60,
              title: 'Fashion',
              top: 225,
              left: MediaQuery.of(context).size.width * 0.28,
              svgPath: "Assets/epic/101.svg",
              svgColor: _svgColor10,
              onTap: () {
                setState(() {
                  _svgColor10 = _svgColor10 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 15,
              texttop: 35,
              title: 'Technology',
              top: 260,
              left: MediaQuery.of(context).size.width * 0.62,
              svgPath: "Assets/epic/a.svg",
              svgColor: _svgColor11,
              onTap: () {
                setState(() {
                  _svgColor11 = _svgColor11 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 25,
              texttop: 38,
              title: 'Gaming',
              top: 375,
              left: 10,
              svgPath: "Assets/epic/bb.svg",
              svgColor: _svgColor12,
              onTap: () {
                setState(() {
                  _svgColor12 = _svgColor12 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 25,
              texttop: 38,
              title: 'Dance',
              top: 375,
              left: MediaQuery.of(context).size.width * 0.3,
              svgPath: "Assets/epic/c.svg",
              svgColor: _svgColor13,
              onTap: () {
                setState(() {
                  _svgColor13 = _svgColor13 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            _buildInterestWidget(
              textleft: 30,
              texttop: 45,
              title: 'Food &\nBeverages',
              top: 367,
              left: MediaQuery.of(context).size.width * 0.55,
              svgPath: "Assets/epic/d.svg",
              svgColor: _svgColor14,
              onTap: () {
                setState(() {
                  _svgColor14 = _svgColor14 == Colors.white
                      ? Color(0xFFDEFBB8)
                      : Colors.white;
                });
              },
            ),
            // Add more _buildInterestWidget calls for other interests
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Choose your",
                    style: TextStyle(
                      fontFamily: "SatoshiBold",
                      fontSize: 32,
                      color: Color(0xff201335),
                      height: 1.3
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "favourite topics",
                    style: TextStyle(
                      fontFamily: "SatoshiBold",
                      fontSize: 32,
                      color: Color(0xff201335),height: 1.3
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeFeed()),
                            );
                          },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        minimumSize: const Size(347.0, 55.0),
                        primary: const Color(0xFF8DC73F),
                      ),
                      child: Container(
                        width: 400.0,
                        height: 55.0,
                        alignment: Alignment.center,
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "I'll do this later",
                    style: TextStyle(
                      fontFamily: "SatoshiRegular",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff696d61),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(
                    height: 20.0,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInterestWidget(
      {required double top,
      required double left,
      required double texttop,
      required double textleft,
      required String svgPath,
      required Color svgColor,
      required VoidCallback onTap,
      required String title}) {
    return Positioned(
      top: top,
      left: left,
      child: Stack(
        children: [
          GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset(
              svgPath,
              color: svgColor,
            ),
          ),
          Positioned(
            left: textleft,
            top: texttop,
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
