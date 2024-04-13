import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/Components/Withdrawalsdata.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_withdrawlAmount.dart';

class WithdrawHistory extends StatefulWidget {
  const WithdrawHistory({Key? key}) : super(key: key);
 
  @override
  State<WithdrawHistory> createState() => _WithdrawHistoryState();
}

class _WithdrawHistoryState extends State<WithdrawHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Withdraw\nFunds",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color(0xff201335),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  Stack(
                    children: [
                      SvgPicture.asset(
                        'Assets/Images/Icon/bell.svg',
                      ),
                      Positioned(
                        top: -4.0,
                        right: 5.0,
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: const BoxDecoration(
                            color: Color(0xFF8DC73F),
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const Text(
                "Available Balance",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "1750.00",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color(0xff201335),
                      fontFamily: 'SatoshiBold',
                      height: 1.1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent,
                    ),
                    child: Container(
                      width: 110.0,
                      height: 47.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.transparent,
                        border: Border.all(
                          color: const Color(0xFFF1F1F2),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              width: 30.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xFFF1F1F2),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          const Text(
                            "USD",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff201335),
                              fontFamily: 'SatoshiMedium',
                              height: 1.1,
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              const Text(
                "Update Payout details",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff8DC73F),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              // Withdraw Button
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WithdrawAmount()),
                  )
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.055,
                  decoration: BoxDecoration(
                    color: const Color(0xff201335),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "Withdraw",
                      style: TextStyle(
                        color: Color(0xffF1F1F2),
                        fontFamily: 'SatoshiBold',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "RECENT WITHDRAWALS",
                    style: TextStyle(
                      color: Color(0xff696D61),
                      fontFamily: 'SatoshiRegular',
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xff8DC73F),
                      fontFamily: 'SatoshiBold',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    // Extracting data for the current row
                    String text1 = dataList[index]['ID'] ?? '';
                    String text2 = dataList[index]['TransID'] ?? '';
                    String text3 = dataList[index]['Date'] ?? '';

                    // Creating a row with three Text widgets
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text1,
                            style: const TextStyle(
                              color: Color(0xFF8DC73F),
                              fontSize: 16,
                              fontFamily: 'SatoshiBold',
                            ),
                          ),
                          Text(
                            text2,
                            style: const TextStyle(
                                color: Color(0xFF696D61),
                                fontSize: 16,
                                fontFamily: 'SatoshiBold'),
                          ),
                          Text(
                            text3,
                            style: const TextStyle(
                                color: Color(0xFF696D61),
                                fontSize: 16,
                                fontFamily: 'SatoshiMedium'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
