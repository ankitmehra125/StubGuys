import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/gethelptiles.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/queries.dart';

class O_Gethelptopic extends StatefulWidget {
  const O_Gethelptopic({super.key});

  @override
  State<O_Gethelptopic> createState() => _O_GethelptopicState();
}

class _O_GethelptopicState extends State<O_Gethelptopic> {
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
                    color: const Color(0xFFDEFBB8),
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
                        SvgPicture.asset(
                          'Assets/Images/Icon/HelpSupport/back.svg',
                          height: 20.0,
                          width: 20.0,
                          color: const Color(0xff201335),
                        ),
                        Expanded(child: Container()),
                        const Text(
                          "Get Help",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 24,
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                        Expanded(child: Container()),
                        SvgPicture.asset(
                          'Assets/Images/Icon/HelpSupport/search.svg',
                          height: 20.0,
                          width: 20.0,
                          color: const Color(0xFF201335),
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
                    const SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProcessRefund()),
                        );
                      },
                      child: const Queries(
                        title: 'How can I process a refund?',
                      ),
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
                      title: 'What is the refund policy for event tickets?',
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
                      title: 'Will I also get refunds on fees?',
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

class ProcessRefund extends StatelessWidget {
  const ProcessRefund({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const O_Gethelptopic()),
                    );
              },
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: const Color.fromARGB(255, 218, 218, 218),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.close,
                    color: Color(0xff201335),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'How can I process a refunds?',
              style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Learn more about refunds', // Use widget.title instead of title
              style: TextStyle(
                color: Color(0xFFC4C4C4),
                fontSize: 13,
                fontFamily: 'SatoshiRegular',
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: 33.0,
                  width: 33.0,
                  child: Image.asset("Assets/Images/Icon/stubguys.png"),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Written by StubGuys Support', // Use widget.title instead of title
                      style: TextStyle(
                        color: Color(0xFFC4C4C4),
                        fontSize: 13,
                        fontFamily: 'SatoshiRegular',
                      ),
                    ),
                    Text(
                      'Updated over a week ago', // Use widget.title instead of title
                      style: TextStyle(
                        color: Color(0xFFC4C4C4),
                        fontSize: 13,
                        fontFamily: 'SatoshiRegular',
                      ),
                    ),
                  ],
                )
              ],
            ),
             const SizedBox(
              height: 25,
            ),
            const Text(
              'As an event organizer, you can initiate the refund process by logging into your event management dashboard. Select the event for which you want to process refunds, and then follow the on-screen instructions to issue refunds to attendees.\n\nYou should define your event\'s refund policy clearly on the event page when you create it. Make sure to include details such as refund deadlines, any non-refundable fees, and how attendees can request a refund. This information should be readily available to attendees.\n\nRefund processing times can vary depending on the payment method used by attendees and their banks. It\'s a good practice to inform attendees that refunds may take 5-10 business days to be reflected in their accounts.',
              style: TextStyle(
                color: Color(0xff696D61),
                fontSize: 16
              ),
            ),
             const SizedBox(
              height: 25,
            ),
            const Divider(
                      height: 1.0,
                      thickness: 0.3,
                      color: Color(0xFFC4C4C4), // Set the color of the divider
                    ),
                    const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Did this answer your question?', // Use widget.title instead of title
                  style: TextStyle(
                    color: Color(0xFFC4C4C4),
                    fontSize: 13,
                    fontFamily: 'SatoshiRegular',
                  ),
                ),
              ],
            ),
             const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [SvgPicture.asset('Assets/Emoji/Smile.svg'),SvgPicture.asset('Assets/Emoji/Laugh.svg'),SvgPicture.asset('Assets/Emoji/Sad.svg')])),
              ],
            )
          ],
        ),
      ),
    );
  }
}
