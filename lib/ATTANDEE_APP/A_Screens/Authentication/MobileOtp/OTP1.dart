import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/OTP.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/PickInterest/picInterest.dart';

class OTP1 extends StatefulWidget {
  const OTP1({super.key});

  @override
  State<OTP1> createState() => _OTP1State();
}

class _OTP1State extends State<OTP1> {
  String selectedCountryCode = 'US'; // Default country code

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'OTP verification',
              style: TextStyle(
                color: Color(0xFF201335),
                fontSize: 24.0,
                fontFamily: 'SatoshiBold',
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Please enter your country and your phone number.',
              style: TextStyle(
                color: Color(0xFF696D61),
                fontSize: 13.0,
                fontFamily: 'SatoshiRegular',
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Color(0xFFF1F1F2), // Change the border color
                      width: 1.0, // Adjust the border width as needed
                    ),
                  ),
                  child: CountryCodePicker(
                    onChanged: (countryCode) {
                      setState(() {
                        selectedCountryCode = countryCode.code!;
                      });
                    },
                    initialSelection: selectedCountryCode,
                    favorite: ['US'],
                    showCountryOnly: true,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                    textStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    flagWidth: 20.0, // Decrease the size of the country flag

                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(
                      fontSize:
                          18.0, // Increase the size of the text field text
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter Phone Number',
                      hintStyle: const TextStyle(
                        color: Color(0xFF5E6258),
                        fontSize: 16.0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: const BorderSide(
                          color: Color(
                              0xFFF1F1F2), 
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: const BorderSide(
                          color: Color(
                              0xFFF1F1F2), // Change the border color for unfocused state
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const otp()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                minimumSize: const Size(390.0, 55.0),
                primary: const Color(0xFF8DC73F),
              ),
              child: Container(
                width: 390.0,
                height: 55.0,
                alignment: Alignment.center,
                child: const Text(
                  'Get OTP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontFamily: 'SatoshiBold',
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
