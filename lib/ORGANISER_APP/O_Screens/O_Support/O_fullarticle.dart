import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class O_FullArticle extends StatefulWidget {
  const O_FullArticle({super.key});

  @override
  State<O_FullArticle> createState() => _O_FullArticleState();
}

class _O_FullArticleState extends State<O_FullArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 36.0,
              ),
              SvgPicture.asset(
                'Assets/Images/Icon/HelpSupport/crossblack.svg',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "How do I register for the event?",
                style: TextStyle(
                  color: Color(0xFF201335),
                  fontSize: 23,
                  fontFamily: 'SatoshiBold',
                ),
              ),
              const Text(
                "Learn more about event registration",
                style: TextStyle(
                  color: Color(0xFFC4C4C4),
                  fontSize: 16,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 40.0,
                      width: 40.0,
                      child: Image.asset("Assets/Images/Icon/stubguys.png")),
                  const SizedBox(
                    width: 8.0,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Written by Stubguys Support",
                        style: TextStyle(
                          color: Color(0xFFC4C4C4),
                          fontSize: 13,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                      Text(
                        "Updated over a week ago",
                        style: TextStyle(
                          color: Color(0xFFC4C4C4),
                          fontSize: 13,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                'Event registration is a simple process. Visit the event '
                    'official website or registration platform, fill in your '
                    'details, including your name, email, and contact'
                    'information.\n'
                    '\nSelect your ticket type, if applicable, and proceed to'
                    'the secure payment section.\n'
                    '\nAfter payment, you\'ll receive a confirmation email or'
                    'digital ticket making your entry hassle-free.\n '
                    '\nRegistration helps organizers plan and personalize the'
                    'event for attendees.',
                style: TextStyle(
                  color: Color(0xFF696D61),
                  fontSize: 16,
                  fontFamily: 'SatoshiMedium', // Set the desired font family
                ),
              ),
              const Divider(
                height: 1.0,
                thickness: 0.8,
                color: Color(0xFFF1F1F2), // Set the color of the divider
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Center(
                child: Text(
                  "Did this answer your question?",
                  style: TextStyle(
                    color: Color(0xFFC4C4C4),
                    fontSize: 13,
                    fontFamily: 'SatoshiRegular',
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'Assets/Images/Icon/HelpSupport/happy.svg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'Assets/Images/Icon/HelpSupport/happiest.svg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'Assets/Images/Icon/HelpSupport/sad.svg',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
