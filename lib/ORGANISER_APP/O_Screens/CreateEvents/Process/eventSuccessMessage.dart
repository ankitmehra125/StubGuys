import 'package:flutter/material.dart';

class EventSuccessMessage extends StatefulWidget {
  const EventSuccessMessage({super.key});

  @override
  State<EventSuccessMessage> createState() => _EventSuccessMessageState();
}

class _EventSuccessMessageState extends State<EventSuccessMessage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffdefbb8),
      body: Column(
        children: [
          SizedBox(height: mQuery.size.height*0.28,),
          Center(
              child: Image.asset("Assets/Images/Components/EventRobot.png")
          ),
          SizedBox(height: mQuery.size.height*0.03,),
          Center(
            child: Text("Event Published!",style: TextStyle(
              fontSize: 32,
              color: Color(0xff201335),
              fontFamily: 'SatoshiBold'
            ),),
          ),
          SizedBox(height: mQuery.size.height*0.03,),
          Center(
            child: Text("Your event is now live. Share your event link to",style: TextStyle(
              color: Color(0xff201335),
              fontFamily: 'SatoshiMedium'
            ),),
          ),
          Center(
            child: Text("prospective attendees to start receiving RSVP.",style: TextStyle(
                color: Color(0xff201335),
                fontFamily: 'SatoshiMedium'
            ),),
          ),
          Expanded(child: SizedBox()),
          Container(
            width: double.infinity,
            height: mQuery.size.height*0.065,
            margin: EdgeInsets.symmetric(
              horizontal: mQuery.size.width*0.065            ),
            decoration: BoxDecoration(
              color: Color(0xff201335),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Center(
              child: Text("Share link",style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'SatoshiBold'
              ),),
            ),
          ),
          SizedBox(height: mQuery.size.height*0.032,),
          Center(
            child: Text("View Event",style: TextStyle(
              fontSize: 16,
              fontFamily: 'SatoshiBold',
              color: Color(0xff201335)
            )),
          ),
          SizedBox(height: mQuery.size.height*0.06,)
        ],
      ),
    );
  }
}
