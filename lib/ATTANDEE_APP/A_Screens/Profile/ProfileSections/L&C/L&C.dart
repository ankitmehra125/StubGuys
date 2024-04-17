import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';

import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/L&C/Currency.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/ProfileSections/L&C/Language.dart';

class LanguageAndCurrency extends StatefulWidget {
  const LanguageAndCurrency({super.key});

  @override
  State<LanguageAndCurrency> createState() => _LanguageAndCurrencyState();
}

class _LanguageAndCurrencyState extends State<LanguageAndCurrency> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: mQuery.size.height * 0.08,
            ),
            Row(
              children: [
                Center(
                    child: GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Profile();
                        }));
                      },
                      child: SvgPicture.asset(
                          "Assets/Images/Components/black_back.svg"),
                    )),
                SizedBox(
                  width: mQuery.size.width * 0.047,
                ),
                const Text(
                  "Languauge",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 32,
                    fontFamily: 'SatoshiMedium',
                    height: 1.1,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: mQuery.size.width * 0.14,
                ),
                const Text(
                  "and currency",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 32,
                    fontFamily: 'SatoshiMedium',
                    height: 1.1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Language();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Languauge",
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 16,
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.46,
                  ),
                  const Text(
                    "English",
                    style: TextStyle(
                      color: Color(0xFF696D61),
                      fontSize: 16,
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.028,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(
                      0xff696D61,
                    ),
                    size: 11,
                  )
                ],
              ),
            ),
            SizedBox(
              height: mQuery.size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Currency();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Currency",
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 16,
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.482,
                  ),
                  const Text(
                    "USD",
                    style: TextStyle(
                      color: Color(0xFF696D61),
                      fontSize: 16,
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.050,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(
                      0xff696D61,
                    ),
                    size: 11,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
