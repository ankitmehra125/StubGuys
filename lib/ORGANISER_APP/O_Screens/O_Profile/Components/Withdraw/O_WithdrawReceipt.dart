import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WithdrawReceipt extends StatelessWidget {
  const WithdrawReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: mQuery.size.height * 0.05,
            ),
            SvgPicture.asset("Assets/Images/Components/black_back.svg"),
            SizedBox(
              height: mQuery.size.height * 0.07,
            ),
            const Center(
                child: Text(
              "WITHDRAW",
              style: TextStyle(fontSize: 13, fontFamily: 'SatoshiMedium'),
            )),
            SizedBox(
              height: mQuery.size.height * 0.008,
            ),
            const Center(
              child: Text(
                "-\$2,520.85",
                style: TextStyle(fontSize: 36, fontFamily: 'SatoshiBold'),
              ),
            ),
            SizedBox(
              height: mQuery.size.height * 0.08,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date & Time",
                  style: TextStyle(fontSize: 13, color: Color(0xffC0C0C0)),
                ),
                Text(
                  "25/10/2023, 09:38:59",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xff201335)),
                )
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transaction Type",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xffC0C0C0)),
                ),
                Text(
                  "Withdraw",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xff201335)),
                )
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Amount Withdrawn",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xffC0C0C0)),
                ),
                Text(
                  "-\$2,501.85",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xff201335)),
                )
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fees",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xffC0C0C0)),
                ),
                Text(
                  "-\$3.50",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xff201335)),
                )
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Channel",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xffC0C0C0)),
                ),
                Text(
                  "Bank Account",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xff201335)),
                )
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Account number",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xffC0C0C0)),
                ),
                Text(
                  "010929309203",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xff201335)),
                )
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Reference",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xffC0C0C0)),
                ),
                Text(
                  "STUBGMGE7Z",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xff201335)),
                )
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Status",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xffC0C0C0)),
                ),
                Text(
                  "Processing",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xffFFC107)),
                )
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.1,
            ),
            Container(
              width: double.infinity,
              height: mQuery.size.height * 0.058,
              decoration: BoxDecoration(
                  color: const Color(0xff201335),
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  "Download Receipt",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SatoshiMedium',
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: mQuery.size.height * 0.02,
            ),
            const Center(
              child: Text(
                "Report a problem",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff201335)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
