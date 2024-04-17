import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/fullarticle.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/gethelptiles.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/queries.dart';

class Gethelptopic extends StatefulWidget {
  const Gethelptopic({super.key});

  @override
  State<Gethelptopic> createState() => _GethelptopicState();
}

class _GethelptopicState extends State<Gethelptopic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: const Color(0xFF201335),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.17,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: MediaQuery.of(context).size.height * 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            'Assets/Images/Icon/HelpSupport/back.svg',
                            height: 20.0,
                            width: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(child: Container()),
                        const Text(
                          "Get Help",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                        Expanded(child: Container()),
                        SvgPicture.asset(
                          'Assets/Images/Icon/HelpSupport/search.svg',
                          height: 20.0,
                          width: 20.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return FullArticle();
                          }));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Ticketing and Registration', // Use widget.title instead of title
                              style: TextStyle(
                                color: Color(0xFF201335),
                                fontSize: 16,
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                            const Text(
                              'Processing refunds on Stubguys.', // Use widget.title instead of title
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 13,
                                fontFamily: 'SatoshiRegular',
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2 articles', // Use widget.title instead of title
                                      style: TextStyle(
                                        color: Color(0xFFC4C4C4),
                                        fontSize: 13,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                    Text(
                                      'By Stubguys.', // Use widget.title instead of title
                                      style: TextStyle(
                                        color: Color(0xFFC4C4C4),
                                        fontSize: 13,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                    height: 33.0,
                                    width: 33.0,
                                    child: Image.asset(
                                        "Assets/Images/Icon/stubguys.png")),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Queries(
                      title: 'How to Create an Organizer Account',
                    ),
                    const Divider(
                      height: 1.0,
                      thickness: 0.3,
                      color: Color(0xFFC4C4C4), // Set the color of the divider
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Queries(
                      title: 'Can I purchase tickets at the door?',
                    ),
                    const Divider(
                      height: 1.0,
                      thickness: 0.3,
                      color: Color(0xFFC4C4C4), // Set the color of the divider
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Queries(
                      title: 'What is the refund policy for tickets?',
                    ),
                    const Divider(
                      height: 1.0,
                      thickness: 0.3,
                      color: Color(0xFFC4C4C4), // Set the color of the divider
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
