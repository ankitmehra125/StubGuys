import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class picInterest extends StatefulWidget {
  const picInterest({super.key});

  @override
  State<picInterest> createState() => _picInterestState();
}

class _picInterestState extends State<picInterest> {
  Color _textColor = Colors.white; // Initial color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Positioned(
            top: 10,
            left: -10,
            child: Stack(children: [
              GestureDetector(
                child: SvgPicture.asset("Assets/epic/11.svg")),
              const Positioned(
                  left: 15,
                  top: 35,
                  child: Text(
                    "Painting",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            top: 10,
            left: 85,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/2.svg"),
              const Positioned(
                  left: 25,
                  top: 35,
                  child: Text(
                    "Travel",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            // top: 10,
            left: 185,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/33.svg"),
              const Positioned(
                  left: 35,
                  top: 55,
                  child: Text(
                    "Lifestyle",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            // top: 10,
            left: 315,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/44.svg"),
              const Positioned(
                  left: 15,
                  top: 30,
                  child: Text(
                    "Science",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            top: 110,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/55.svg"),
              const Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "Adventure\n   Sports",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            top: 110,
            left: 125,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/6.svg"),
              const Positioned(
                  left: 25,
                  top: 35,
                  child: Text(
                    "Music",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            top: 148,
            left: 210,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/7.svg"),
              const Positioned(
                  left: 25,
                  top: 35,
                  child: Text(
                    "Acting",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            top: 100,
            left: 305,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/88.svg"),
              const Positioned(
                  left: 25,
                  top: 55,
                  child: Text(
                    "Make-up",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  )),
            ])),
        Positioned(
            top: 270,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/9.svg"),
              const Positioned(
                  left: 35,
                  top: 40,
                  child: Text(
                    "Sports",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            top: 215,
            left: 110,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/101.svg"),
              const Positioned(
                  left: 35,
                  top: 60,
                  child: Text(
                    "Fashion",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            top: 250,
            left: 250,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/a.svg"),
              const Positioned(
                  left: 15,
                  top: 35,
                  child: Text(
                    "Technology",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            top: 375,
            left: 10,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/bb.svg"),
              const Positioned(
                  left: 25,
                  top: 38,
                  child: Text(
                    "Gaming",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            top: 365,
            left: 130,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/c.svg"),
              const Positioned(
                  left: 20,
                  top: 35,
                  child: Text(
                    "Dance",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Positioned(
            top: 355,
            left: 225,
            child: Stack(children: [
              SvgPicture.asset("Assets/epic/d.svg"),
              const Positioned(
                  left: 30,
                  top: 45,
                  child: Text(
                    "Food &\nBeverages",
                    style: TextStyle(fontSize: 14, color: Color(0xff201335)),
                  ))
            ])),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "Choose your",
                style: TextStyle(
                  fontFamily: "Satoshi",
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff201335),
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "favourite topics",
                style: TextStyle(
                  fontFamily: "Satoshi",
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff201335),
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {},
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
                height: 15.0,
              )
            ],
          ),
        )
      ]),
    );
  }
}
