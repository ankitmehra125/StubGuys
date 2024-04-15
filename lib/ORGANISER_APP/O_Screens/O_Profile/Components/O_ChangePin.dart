import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_HomeFeeds/O_HomeFeed.dart';

class ChangePin extends StatefulWidget {
  const ChangePin({Key? key}) : super(key: key);

  @override
  _ChangePinState createState() => _ChangePinState();
}

class _ChangePinState extends State<ChangePin> {
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  int focusedIndex = -1;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(4, (_) => TextEditingController());
    focusNodes = List.generate(4, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    final defaultPinTheme = PinTheme(
      width: mQuery.size.width*0.23,
      height: mQuery.size.height*0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color(0xff8DC73F)
        )
      )
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: mQuery.size.height * 0.17,
            color: const Color(0xffDEFBB8),
            child: Column(
              children: [
                SizedBox(
                  height: mQuery.size.height * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap : ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const O_HomeFeed()),
                            );
                          },
                          child: SvgPicture.asset("Assets/ORGANISER_APP/Icons/Orders/formkit_arrowleft.svg")),
                      SizedBox(
                        width: mQuery.size.width * 0.04,
                      ),
                      const Text(
                        "Input your StubGuys PIN",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff201335),
                          fontFamily: 'SatoshiBold',
                          height: 1.1,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: mQuery.size.height * 0.02,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  "Enter your pin",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF5E6366),
                    fontFamily: 'SatoshiRegular',
                    height: 2.1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: mQuery.size.height*0.02,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              child: Column(
                children: [
                  Pinput(
                    length: 4,
                    defaultPinTheme: defaultPinTheme,
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SizedBox()),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const O_HomeFeed()),
              )
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.045
              ),
              height: mQuery.size.height * 0.065,
              decoration: BoxDecoration(
                  color: const Color(0xff201335),
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Color(0xffF1F1F2),
                      fontFamily: 'SatoshiBold',
                      fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(height: mQuery.size.height*0.023,)
        ],
      ),
    );
  }
}

class OTPBox extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isFocused;

  OTPBox(
      {required this.controller,
      required this.focusNode,
      required this.isFocused});

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Container(
      width: mQuery.size.width * 0.18, // Adjust the width as needed
      height: mQuery.size.width * 0.63, // Adjust the height as needed
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "", // Hide the character counter
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color:
                  isFocused ? const Color(0xff8DC73F) : const Color(0xffF1F1F2),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
