import 'package:flutter/material.dart';

class SeatchEvents extends StatefulWidget {
  const SeatchEvents({super.key});

  @override
  State<SeatchEvents> createState() => _SeatchEventsState();
}

class _SeatchEventsState extends State<SeatchEvents> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.32,
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Search Events",
              style: TextStyle(
                color: Color(0xFF201335),
                fontSize: 34,
                fontFamily: 'SatoshiMedium',
                height: 1.1,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.037,
            ),
            SizedBox(
              width: double.infinity, // Set your desired width
              height: 50.0, // Set your desired height
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(12.0), // Set border radius
                    borderSide: const BorderSide(
                      color: Color(0xFFABAFB1), // Set border color
                      width: 0.5, // Set border width
                    ),
                  ),
                  
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        12.0), // Set focused border radius
                    borderSide: const BorderSide(
                      color: Color(0xFF8DC73F), // Set focused border color
                      width: 1.0, // Set focused border width
                    ),
                  ),
                  hintText: 'Event title or ID',
                  hintStyle: const TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight
                        .normal, // Set the font weight of the hint text
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Step2()),
                      // );
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
                          'Search',
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
          ]),
        ),
      ),
    );
  }
}
