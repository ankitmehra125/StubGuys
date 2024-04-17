import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/EventDetails/GetTickets/Step5.dart';

class TktDetails extends StatefulWidget {
  const TktDetails({super.key});

  @override
  State<TktDetails> createState() => _TktDetailsState();
}

class _TktDetailsState extends State<TktDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Row(
              children: [
                Text(
                  "Ticket 1",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 20.0,
                    fontFamily: 'SatoshiBold',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Row(
              children: [
                Text(
                  "Unleashing Africa’s Future with bill Gates",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 14.0,
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "General Admission",
                  style: TextStyle(
                    color: Color(0xFFC7C7C7),
                    fontSize: 16.0,
                    fontFamily: 'SatoshiRegular',
                  ),
                ),
                Text(
                  "\$25.00",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 16.0,
                    fontFamily: 'SatoshiBold',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: ()
                  {
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return Step5();
                     }));
                  },
                  child: Container(
                    width: 140.0, // Set your desired width
                    height: 40.0, // Set your desired height
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDEFBB8),
                      borderRadius: BorderRadius.circular(
                          20.0), // Set your desired border radius
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 8.0),
                        Icon(
                          Icons.edit,
                          color: Color(0xFF696D61),
                          size: 12.0,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Edit Information',
                          style: TextStyle(
                            color: Color(0xFF696D61),
                            fontSize: 12.0,
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15),
              child: Divider(
                thickness: 0.17,
                color: Colors.grey, // Set your desired thickness
              ),
            ),
          ],
        ),
      ),
    );
  }
}
