import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawSuccess.dart';

class ConfirmOTP extends StatefulWidget {
  const ConfirmOTP({Key? key}) : super(key: key);

  @override
  _ConfirmOTPState createState() => _ConfirmOTPState();
}

class _ConfirmOTPState extends State<ConfirmOTP> {
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
        width: mQuery.size.width * 0.23,
        height: mQuery.size.height * 0.1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xff8DC73F))));
    return Scaffold(
      backgroundColor: const Color(0xffdefbb8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mQuery.size.height * 0.055,
              ),
              SvgPicture.asset("Assets/Images/Components/black_back.svg"),
              SizedBox(
                height: mQuery.size.height * 0.1,
              ),
              const Text(
                "Confirm transfer!",
                style: TextStyle(
                    fontSize: 36,
                    color: Color(0xFF201335),
                    fontFamily: 'SatoshiBold'),
              ),
              SizedBox(
                height: mQuery.size.height * 0.01,
              ),
              const Text(
                "We have sent a verification code on your phone number + 1 831 *** 992. Please enter verification code below.",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF201335),
                    fontFamily: "SatoshiMedium"),
              ),
              SizedBox(
                height: mQuery.size.height * 0.032,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Pinput(
                    length: 4,
                    defaultPinTheme: defaultPinTheme,
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.05,
                  ),
                  const Text(
                    "Don’t receive a code?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff201335),
                        fontFamily: "SatoshiRegular"),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.3,
                  ),
                  //here

                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WithdrawSuccess()),
                      )
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.055,
                      decoration: BoxDecoration(
                          color: const Color(0xff201335),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              color: Color(0xffF1F1F2),
                              fontFamily: 'SatoshiBold',
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OTPBox extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isFocused;

  OTPBox({
    required this.controller,
    required this.focusNode,
    required this.isFocused,
  });
  @override
  _OTPBoxState createState() => _OTPBoxState();
}

class _OTPBoxState extends State<OTPBox> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return GestureDetector(
      onTap: () {
        // Set the focus to the tapped OTPBox
        widget.focusNode.requestFocus();
      },
      child: Container(
        width: mQuery.size.width * 0.18,
        height: mQuery.size.width * 0.63,
        decoration: BoxDecoration(
          color: widget.isFocused ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: widget.isFocused
                ? const Color(0xff8DC73F)
                : const Color(0xffF1F1F2),
            width: 1,
          ),
        ),
        child: TextField(
          controller: widget.controller,
          focusNode: widget.focusNode,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: widget.isFocused
                ? const Color(0xff8DC73F)
                : const Color(0xffF1F1F2),
          ),
          decoration: InputDecoration(
            counterText: "", // Hide the character counter
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: widget.isFocused
                    ? const Color(0xff8DC73F)
                    : const Color(0xffF1F1F2),
                width: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
