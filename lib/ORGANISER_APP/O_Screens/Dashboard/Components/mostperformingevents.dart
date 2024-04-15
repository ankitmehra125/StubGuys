import 'package:flutter/material.dart';

class MostPerformingEvents extends StatelessWidget {
  final String imageurl;
  final String topic;

  const MostPerformingEvents({Key? key, required this.imageurl, required this.topic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: mQuery.size.width * 0.2,
            height: mQuery.size.height * 0.06,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Image.asset(imageurl),
          ),
        ),
        SizedBox(
          width: mQuery.size.width * 0.01,
        ),
        Text(
          topic,
          style: const TextStyle(fontSize: 10,
            fontFamily: 'SatoshiBold'),
        )
      ],
    );
  }
}
