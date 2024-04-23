import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class O_OrderDetails extends StatefulWidget {
  const O_OrderDetails({super.key});

  @override
  State<O_OrderDetails> createState() => _O_OrderDetailsState();
}

class _O_OrderDetailsState extends State<O_OrderDetails> {
  // Example map with data
  final Map<String, String> orderDetails = {
    'Date & Time': '25/10/2023, 09:38:59',
    'Attendee Name': 'Friday Odey',
    'Amount Received': '\$23',
    'Fees': '\$3.50',
    'Payment Channel': 'Paypal',
    'Event Title': 'Unleashing Africa’s Potential with Bill Gates',
    'Reference': 'STUBGMGE7Z',
    'Status': 'Completed',
  };

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
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
                        onTap: () {},
                        child: SvgPicture.asset(
                            "Assets/ORGANISER_APP/Icons/Orders/formkit_arrowleft.svg"),
                      ),
                      SizedBox(
                        width: mQuery.size.width * 0.1,
                      ),
                      const Text(
                        "Order Details",
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 24,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: mQuery.size.height * 0.045,),
                // Loop through orderDetails map to populate rows dynamically
                for (var entry in orderDetails.entries)
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 20
                    ),
                    child: Row(
                      children: [
                        Text(
                          entry.key,
                          style: TextStyle(
                              color: Color(0xffC0C0C0),
                              fontSize: 13,
                              fontFamily: 'SatoshiMedium'),
                        ),
                        Expanded(child: SizedBox()),

                        entry.key == 'Status' ? Text(
                          entry.value,
                          style: TextStyle(
                              color: Color(0xff8DC73F),
                              fontSize: 12,
                              fontFamily: 'SatoshiMedium'),
                        ) : Text(
                          entry.value,
                          style: TextStyle(
                              color: Color(0xff201335),
                              fontSize: 12,
                              fontFamily: 'SatoshiMedium'),
                        )
                      ],
                    ),
                  ),
                SizedBox(height: mQuery.size.height*0.2,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height*0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff201335)
                  ),
                  child: Center(
                    child: Text("Download Receipt",style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SatoshiBold',
                      fontSize: 16
                    ),),
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.023,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

