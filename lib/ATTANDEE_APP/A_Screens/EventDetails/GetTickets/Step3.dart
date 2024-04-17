import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../Components/ChoosePaymentMeth.dart';
import '../Components/CouponCode.dart';
import '../EventDetailsV1.dart';
import 'Step4.dart';


class Step3 extends StatefulWidget {
  const Step3({super.key});

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  int selectedPaymentMethod = 2;

  List<String> svgPaths = [
    'Assets/Images/Components/Payment/card.svg',
    'Assets/Images/Components/Payment/paypal.svg',
    'Assets/Images/Components/Payment/apple.svg',
    'Assets/Images/Components/Payment/gpay.svg',
  ];

  void _paymentprompt() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return PromptPay(
          svgPaths: svgPaths,
          selectedPaymentMethod: selectedPaymentMethod,
          onSave: (int index) {
            setState(() {
              selectedPaymentMethod = index;
            });
          },
        ); // Replace with your filter widget
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: const Color(0xFF201335),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the Material Page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EventDetails()),
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        'Assets/Images/Components/step1_back.svg',
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      'Assets/Images/Components/step1_bell.svg',
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Stack(children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.27,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.amber,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'Assets/Images/Components/step1_mainimage.png',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, right: 55.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.14,
                                    ),
                                    const Text(
                                      "June 21",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    const Text(
                                      "Unleashing Africa’s Future with Bill Gates.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.0,
                                        fontFamily: 'SatoshiMedium',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.0,
                              top: MediaQuery.of(context).size.height * 0.02,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 57,
                                  height: 57,
                                  padding: const EdgeInsets.all(17.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: const Color(0xFFDEFBB8),
                                  ),
                                  child: SvgPicture.asset(
                                    'Assets/Images/Components/step1_ticket.svg',
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "From \$25.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Payment",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: _paymentprompt,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 58.0, // Set your desired width
                                        height: 40.0, // Set your desired height
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10.0), // Set border radius
                                          border: Border.all(
                                            color: Color(
                                                0xFF201335), // Set border color
                                            width: 1.5, // Set border width
                                          ),
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                              svgPaths[selectedPaymentMethod] // Replace with your SVG file path
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.navigate_next)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15),
                            child: Divider(
                              thickness: 0.17,
                              color: Colors.grey, // Set your desired thickness
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          // Total Sum of payment calculation
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "Total",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                                Expanded(child: Container()),
                                Row(
                                  children: [
                                    const Text(
                                      "2 Tickets",
                                      style: TextStyle(
                                        color: Color(0xFFE3E3E3),
                                        fontSize: 12.0,
                                        fontFamily: 'SatoshiBold',
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    const Text(
                                      "\$50.00",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontFamily: 'SatoshiBold',
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.07,
                            margin: EdgeInsets.symmetric(
                              horizontal: 14
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Adjust the radius as needed
                              border: Border.all(
                                color: const Color(0xFFF1F1F2),
                                width: 2.0, // Set your desired border width
                              ),
                              // Set your desired background color
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.03,
                                ),
                                const Text(
                                  "Coupon Code",
                                  style: TextStyle(
                                    color: Color(0xFFB9B9B9),
                                    fontSize: 16.0,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),

                                const CouponCode(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Row(
                              children: [
                                Text(
                                  "20% OFF Coupon successfully applied",
                                  style: TextStyle(
                                    color: Color(0xFF8DC73F),
                                    fontSize: 12.0,
                                    fontFamily: 'SatoshiRegular',
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: Container(),
                          ),
                          SizedBox(height: mQuery.size.height*0.023,),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Step4()),
                                    );
                                  },
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    // Set elevation to 0
                                    backgroundColor: MaterialStateProperty.all(
                                      const Color(0xFF8DC73F),
                                    ),
                                    // Set your desired color
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0), // Set your desired border radius
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    // Set your desired width
                                    height: mQuery.size.height*0.065,
                                    // Set your desired height
                                    child: const Center(
                                      child: Text(
                                        'Pay \$50',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontFamily: 'SatoshiBold',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: mQuery.size.height*0.03,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}