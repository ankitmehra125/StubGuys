import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/gethelptiles.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/GetHelpTopic.dart';

class Gethelp extends StatefulWidget {
  const Gethelp({super.key});

  @override
  State<Gethelp> createState() => _GethelpState();
}

class _GethelpState extends State<Gethelp> {
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
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Gethelptopic();
                  }));
                },
                child: const Column(
                  children: [
                    GetHelptiles(
                        Title: "Getting Started",
                        SubTitle: "Setting up your Stubguys account.",
                        NumberofArticles: "5 articles"),
                    GetHelptiles(
                        Title: "Getting Refunds",
                        SubTitle:
                            "Everything you ned to know about requesting refunds",
                        NumberofArticles: "24 articles"),
                    GetHelptiles(
                        Title: "Buying tickets",
                        SubTitle:
                            "Everything you ned to know about buying tickets",
                        NumberofArticles: "5 articles"),
                    GetHelptiles(
                        Title: "Fees & Pricing",
                        SubTitle:
                            "Learn more about fees for various transactions/payments",
                        NumberofArticles: "11 articles"),
                    GetHelptiles(
                        Title: "Frequently Asked Questions",
                        SubTitle: "Answers to frequently asked questions",
                        NumberofArticles: "9 articles"),
                    GetHelptiles(
                        Title: "Contact us",
                        SubTitle: "How to contact Stubguys",
                        NumberofArticles: "1 articles")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
