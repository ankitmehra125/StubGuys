import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/AddBankAccount/AddBank.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_ConfirmOTP.dart';

class WithdrawAmount extends StatefulWidget {
  const WithdrawAmount({Key? key});

  @override
  State<WithdrawAmount> createState() => _WithdrawAmountState();
}

class _WithdrawAmountState extends State<WithdrawAmount> {
  TextEditingController accountnumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                            "Assets/ORGANISER_APP/Icons/Orders/formkit_arrowleft.svg"),
                        const Text(
                          "Withdraw",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff201335),
                            fontFamily: 'SatoshiBold',
                            height: 1.1,
                          ),
                        ),
                        SvgPicture.asset(
                            "Assets/Images/Components/Profile/p_gethelp.svg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: mQuery.size.height * 0.02),
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Text(
                      "Bank Name",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff5E6366),
                        fontFamily: 'SatoshiMedium',
                        height: 1.1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mQuery.size.height * 0.016,
            ),
            // Add some spacing
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xffF1F1F2), width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Capital One",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffABAFB1),
                      fontFamily: 'SatoshiRegular',
                    ),
                  ),
                  SvgPicture.asset(
                      "Assets/ORGANISER_APP/Icons/Orders/dropdown.svg"),
                ],
              ),
            ),

            SizedBox(height: mQuery.size.height * 0.02),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Text(
                    "Account number",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: mQuery.size.height * 0.016,
            ),

            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: const Color(0xffF1F1F2),
                )),
                child: TextField(
                    controller: accountnumberController,
                    decoration: InputDecoration(
                      hintText: "******20203",
                      hintStyle: const TextStyle(
                          fontSize: 13, color: Color(0xffABAFB1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color(0xffF1F1F2), width: 1)),
                    ))),

            SizedBox(
              height: mQuery.size.height * 0.012,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddBank()),
                )
              },
              child: const Text(
                "Switch Bank Account",
                style: TextStyle(
                  color: Color(0xff8DC73F),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
            ),

            SizedBox(
              height: mQuery.size.height * 0.03,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Balance (\$)    1,750.00",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff5E6366),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: mQuery.size.height * 0.015,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Withdrawable Balance (\$)    1,750.00",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff5E6366),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: mQuery.size.height * 0.03,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    "Withdrawal Amount",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: mQuery.size.height * 0.016,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: const Color(0xffF1F1F2),
                )),
                child: TextField(
                  decoration: InputDecoration(
                    hintText:
                        "Amount (\$)                                                    min. 50.00",
                    hintStyle:
                        const TextStyle(fontSize: 13, color: Color(0xffABAFB1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffF1F1F2), width: 1)),
                  ),
                )),

            SizedBox(
              height: mQuery.size.height * 0.03,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ConfirmOTP()),
                )
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: mQuery.size.height * 0.06,
                decoration: BoxDecoration(
                    color: const Color(0xff201335),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    "Withdraw",
                    style: TextStyle(
                      color: Color(0xffF1F1F2),
                      fontFamily: 'SatoshiBold',
                      fontSize: 16,
                      height: 1.0,
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
