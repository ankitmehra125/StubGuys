
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';

class CloseOTP extends StatefulWidget {
  const CloseOTP({super.key});

  @override
  State<CloseOTP> createState() => _CloseOTPState();
}

const mailId = "test@gmail.com";
bool isOtp = false;

class _CloseOTPState extends State<CloseOTP> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mQuery.size.width*0.045
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                SvgPicture.asset("Assets/Images/Icon/back.svg"),
                SizedBox(height: mQuery.size.height*0.12,),
                Text("Welcome back!",style: TextStyle(
                  color: Color(0xff201335),
                  fontFamily: 'SatoshiBold',
                  fontSize: 32
                ),),
                SizedBox(height: mQuery.size.height*0.02,),
                Text("Enter your 4-digit pin to continue",style: TextStyle(
                  color: Color(0xff201335),
                  fontFamily: 'SatoshiMedium'
                ),),
                SizedBox(height: mQuery.size.height*0.06,),
                OtpTextField(
                  numberOfFields: 4,
                  showFieldAsBox: true,
                  fieldWidth: 70,
                  focusedBorderColor: Color(0xFF8DC73F),
                  enabledBorderColor: Color(0xFFF1F1F2),
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  onSubmit: (String verificationCode) {
                    isOtp = true;
                  },
                ),
                SizedBox(height: mQuery.size.height*0.07,),
                Text("Don’t receive a code?",style: TextStyle(
                    color: Color(0xff201335),
                    fontFamily: 'SatoshiMedium'
                ),),
                SizedBox(height: mQuery.size.height*0.3,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height*0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff201335)
                  ),
                  child: Center(
                    child: Text("Confirm",style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SatoshiBold',
                      fontSize: 16
                    ),)
                  ),
                ),
                SizedBox(height: mQuery.size.height*0.03,)
              ],
            ),
          ),
        ));
  }
}
