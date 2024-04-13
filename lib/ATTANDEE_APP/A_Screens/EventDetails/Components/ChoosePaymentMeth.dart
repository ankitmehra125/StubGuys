import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PromptPay extends StatefulWidget {
  final Function(int) onSave;
  final List<String> svgPaths;
  final int selectedPaymentMethod;

  PromptPay({super.key,required this.onSave,
    required this.svgPaths,
    required this.selectedPaymentMethod,});

  @override
  State<PromptPay> createState() => _PromptPayState();
}

class _PromptPayState extends State<PromptPay> {
  int selectedPaymentMethod = 2;
  // List of SVG file paths for each payment method
  List<String> svgPaths = [
    'Assets/Images/Components/Payment/card.svg',
    'Assets/Images/Components/Payment/paypal.svg',
    'Assets/Images/Components/Payment/apple.svg',
    'Assets/Images/Components/Payment/gpay.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.32,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 30.0, right: 10.0),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Choose your payment method",
              style: TextStyle(
                color: Color(0xFF201335),
                fontSize: 20,
                fontFamily: 'SatoshiBold',
                height: 1.1,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                4,
                    (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedPaymentMethod = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 22.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.16,
                      height: 42.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: selectedPaymentMethod == index
                              ? Color(0xFF8DC73F) // Set selected border color
                              : Colors
                              .grey.shade300, // Set default border color
                          width: selectedPaymentMethod == index ? 2.0 : 1.0,
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          svgPaths[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: MediaQuery.of(context).size.height * 0.065,
              child: Expanded(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      widget.onSave(selectedPaymentMethod);
                      Navigator.pop(context);
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
                      height: 55.0,
                      // Set your desired height
                      child: const Center(
                        child: Text(
                          'Save',
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
            SizedBox(height: 30.0,)
          ]),
        ),
      ),
    );
  }
}