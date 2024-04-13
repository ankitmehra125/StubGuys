import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'messageReQuest_page.dart';


class ConnectsPage extends StatefulWidget {
  const   ConnectsPage({Key? key}) : super(key: key);

  @override
  State<ConnectsPage> createState() => _ConnectsPageState();
}

class _ConnectsPageState extends State<ConnectsPage> {
  // Sample data map
  final List<Map<String, dynamic>> sampleData = [
    {
      "name": "Felix Oshimen",
      "message": "I would like to a connect with you. ",
      "time": "1 mins ago",
      "img":
      "https://s3-alpha-sig.figma.com/img/bad2/8cbc/91e78b7d9b8f2bb7db12e33b8f5ed6b1?Expires=1713744000&Key-"
          "Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UPlgdPkvEPNhKdfthkqL0Z0bTa4PgKDKx~Ba1TazsVJRJaJe2nMjR6RHMeM5ZnT85BGxhA1U"
          "PGrLXykU04nI1VBboEzLioOj~RFO~tia8iIgJiqI4UGHf5fR5tfZ8XabHCtCRbvzB3ElN0VctnHO~FnDsCAfHfklXS1P1QYJ5RYvZHOP0~dw-HZ8CNh"
          "hEdi7Tl12McwXMUqlqewgsQo~7C68eoKgdFPWbQcNW20ghuYSjmDuYS-u3UiEinH--DqDKGlepXyB353tf9GfOFoGZ6vPhelK2qvkiimfCRMNQ7AcU"
          "d4D2XG4DmHbReYy9cs~MLnmxcc8vgEeXrH4Gfftkg__",
    },
    {
      "name": "Basil Houston",
      "message": "I’m an architect and a graduate of Yale..",
      "time": "2 mins ago",
      "img":
      "https://s3-alpha-sig.figma.com/img/faac/bcb4/e119bb7cb889387e827be8764b244f2d?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature"
          "=qClW0uRIJt8Y~kUuTy2Q6lz6MkZKf3kb8S8iUstc9m0mvviCaGrpElIhIHGin6AoAZWo~u1YuvYOZkZz310~SFUBwJ1yi4vshjwnQazyQA1aaJVXTbzBmLqUGHsPL36C-uoufnkBD~YW"
          "fLHJ-0aOkQl7yJdoDarqT3FawsVOTylrszTs3RlOe8N5nX5whVWTFMZi-gnBEVVFvjCE9M6nS09C"
          "0Hmag2f4WJEc5hVUqHMCcOqwnQw-di81vLJiPtb07oshowtWR1ozGdZjINL~Yd5401HjlaXmu-F2gWGFtiWGOu7Doeru85JKYpeS4v~SVB4ckgxIgwnyE-lwsLtH8w__",
    },
    {
      "name": "Sandra Hot",
      "message": "Wow you look beautiful ",
      "time": "2 mins ago",
      "img":
      "https://s3-alpha-sig.figma.com/img/bad2/8cbc/91e78b7d9b8f2bb7db12e33b8f5ed6b1?Expires=1713744000&Key-Pair-Id=A"
          "PKAQ4GOSFWCVNEHN3O4&Signature=UPlgdPkvEPNhKdfthkqL0Z0bTa4PgKDKx~Ba1TazsVJRJaJe2nMjR6RHMeM5ZnT85BGxhA1UPG"
          "rLXykU04nI1VBboEzLioOj~RFO~tia8iIgJiqI4UGHf5fR5tfZ8XabHCtCRbvzB3ElN0VctnHO~FnDsCAfHfklXS1P1QYJ5RYvZHOP0~dw-HZ8CNhh"
          "Edi7Tl12McwXMUqlqewgsQo~7C68eoKgdFPWbQcNW20ghuYSjmDuYS-u3UiEinH--DqDKGlepXyB353tf9GfOFoGZ6vPhelK2qvkiimfCRMNQ7AcUd4D2XG4DmHbReYy9cs~MLnmxcc8vgEeXrH4Gfftkg__",
    },
    {
      "name": "Demetris Rock",
      "message": "Howdy! See who’s here",
      "time": "2 mins ago",
      "img":
      "https://s3-alpha-sig.figma.com/img/27dc/a50f/b6a47601563bf3836212b85282c8b6cc?Expires=1713744000&Key-Pair-Id=APKAQ4GOSF"
          "WCVNEHN3O4&Signature=cn1hLgNU07C6HwqxDgnFf8zQHnvP98j6MwxPzvXGutwAvq6glml3IIwisceXZvFa~AaH~FSM-0JoJfP2QMscIAEIbfl9N5UYlXf"
          "DznrXyWN-8OSUwMjrnJmsg2MiuW-Cu4SR2A0I1SPuov99Ft~YwFA0ZFUeobz1GjbNqCL8WxupqacU3SBzRZrFq~DTVoWGjuO-MPEjA80f-OCcaXWM~ruTRHHjptI59EdWq8"
          "qY7M52DqdGtkZPSkYcbp3WVbG52VH5ij78MqiGImVg8Kweu4XNP~niw8FB9r2PCW5DDOMZfMG8REL-mpNFsCXyn6NJFRAR2vJRzco2X47BntmPGA__",
    },
    {
      "name": "Susan Kyle",
      "message": "I would like to a connect with you. ",
      "time": "2 mins ago",
      "img":
      "https://s3-alpha-sig.figma.com/img/ea0a/8d96/2e0d6ee3369b1eb4f46585da0b09ef8f?Expires=1713744000&Key-Pair-Id=A"
          "PKAQ4GOSFWCVNEHN3O4&Signature=jQF-u04Auv4FUbLErh91~BdlQuvzpeM1bfsdg7yCEpILt59C7tR-dZhqtloGkEZp99aQbfcNGZ0ZpRDREE"
          "f18l9P~TyACOWVt-UFjXKJQsHVyaUaWZrQG7d9~dsW2yjVROkdFMdTrXZOzSU7BMrwlYp17NQPs51p15szJrkZSSCe0g48lW1YprgUAywafEf5gGUN~fhLxONa2RcmVYCkisBX9t3swa4GFzSojokHZFWMzPzlC"
          "SedhBnE2uL0srHaDvflEs3AJ5N6SJ1xi8OQB9xQXSYzdaUxs25Y4MvNIsiRdxNld02F2sdtLTe9mszl6bFhe7dlQ~gRfeh0rb7Tvg__"
    },
    {
      "name": "Demetris Rock",
      "message": "Howdy! See who’s here",
      "time": "2 mins ago",
      "img":
      "https://s3-alpha-sig.figma.com/img/27dc/a50f/b6a47601563bf3836212b85282c8b6cc?Expires=1713744000&Key-Pair-Id="
          "APKAQ4GOSFWCVNEHN3O4&Signature=cn1hLgNU07C6HwqxDgnFf8zQHnvP98j6MwxPzvXGutwAvq6glml3IIwisceXZvFa~AaH~FSM-0JoJfP2QMscIAEIbfl9N5UYlXfDznrX"
          "yWN-8OSUwMjrnJmsg2MiuW-Cu4SR2A0I1SPuov99Ft~YwFA0ZFUeobz1GjbNqCL8WxupqacU3SBzRZrFq~DTVoWGjuO-MPEjA80f-OCcaXWM~ruTRHHjptI59EdWq8qY7M52DqdGtkZPSkYcbp"
          "3WVbG52VH5ij78MqiGImVg8Kweu4XNP~niw8FB9r2PCW5DDOMZfMG8REL-mpNFsCXyn6NJFRAR2vJRzco2X47BntmPGA__",
    },
    {
      "name": "Erica Kennedy",
      "message": "I would like to a connect with you. ",
      "time": "2 mins ago",
      "img":
      "https://s3-alpha-sig.figma.com/img/a6fe/fba3/3606287c30de1b104b7d4b354a793d66?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lFIT"
          "fZBu8lFxHkDYua9MeVF1J42Sil8SrIf-kLfeVTrpM6tczx9UnSh38JwSMow1C4NsV9Bfc5UnycKhU3ibBAgqXuZRMNKCOXxtTsFaOHxf3vnQaVL-cm5HN~wH4cVwIC-X~ZbtyidfdnTxUpz0b"
          "rqMm~ktSWjXvtj89s3YDsjrYguNxS~kYnZknCACHadlnrM9v8rxQZmxSlQLmjmm5UNu28ne-D9Yf7rgLKd-NXgtSwbFGdGRjCtXxxgHUvLrs3miRzVYh"
          "BjsA7T9DpXER1pufb4dVJAVDeEbnkcH7ZF~rZ3dPNqG94bpxMUYTFj0hSU~y~RL65Wlw2KnB4EbmA__",
    },
    // Add more data here as needed
  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff201335),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height * 0.058,
                bottom: mQuery.size.height * 0.03,
                left: mQuery.size.width * 0.045,
                right: mQuery.size.width * 0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    child: SvgPicture.asset(
                      'Assets/Images/Icon/HelpSupport/back.svg',
                      height: 20.0,
                      width: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.2,
                  ),
                  Text(
                    "Connects",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xffF9F9F9),
                      fontFamily: 'SatoshiBold',
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: mQuery.size.height * 0.028,
                    left: mQuery.size.width * 0.045,
                    right: mQuery.size.width * 0.045,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Connects",
                          style: TextStyle(
                              color: Color(0xff696D61),
                              fontFamily: 'SatoshiBold',
                              fontSize: 18),
                        ),
                        SizedBox(height: mQuery.size.height * 0.022),
                        // Generate containers dynamically with spaces in between
                        for (var i = 0; i < sampleData.length && i < 7; i++)
                          Column(
                            children: [
                              GestureDetector(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return MessageRequestPage();
                                  }));
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: mQuery.size.height * 0.065,
                                  child: Row(
                                    children: [
                                      ProfilePicture(
                                        name: "",
                                        radius: 20,
                                        img: sampleData[i]['img'],
                                        fontsize: 10,
                                      ),
                                      SizedBox(
                                        width: mQuery.size.width * 0.015,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            sampleData[i]['name'],
                                            style: TextStyle(
                                              color: Color(0xff696D61),
                                              fontSize: 16,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Text(
                                            sampleData[i]['message'],
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'SatoshiRegular',
                                              color: Color(0xffD3D3D3),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(child: SizedBox()),
                                      Text(
                                        sampleData[i]['time'],
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'SatoshiRegular',
                                          color: Color(0xffD3D3D3),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: mQuery.size.height * 0.035),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
