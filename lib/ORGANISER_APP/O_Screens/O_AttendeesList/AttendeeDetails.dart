import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Atnd_Details extends StatefulWidget {
  final Map<String, dynamic> data;

  const Atnd_Details({Key? key, required this.data}) : super(key: key);

  @override
  State<Atnd_Details> createState() => _Atnd_DetailsState();
}

class _Atnd_DetailsState extends State<Atnd_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset("Assets/Images/Icon/back.svg"),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF8DC73F), // Set the border color
                width: 2.0, // Set the border thickness
              ),
            ),
            child: ClipOval(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Circular progress indicator
                    const CircularProgressIndicator(
                      strokeWidth: 2.0,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xFF8DC73F)),
                    ),
                    // Image
                    Image.network(
                      widget.data['image']!,
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            widget.data['name']!,
            style: const TextStyle(
              color: Color(0xFF201335),
              fontSize: 35,
              fontFamily: 'SatoshiBold',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            width: 171.0,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Colors.black, // Set the border color
                width: 1.0, // Set the border width
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.messenger_outline, color: Colors.black),
                const SizedBox(width: 8.0),
                GestureDetector(
                  // onTap: () => _navigateToSendMessagePage(context),
                  child: const Text(
                    'Send Message',
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 16,
                      fontFamily: 'SatoshiBold',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Email address',
                style: TextStyle(
                  color: Color(0xFFC0C0C0),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              Text(
                widget.data['email'],
                style: const TextStyle(
                  color: Color(0xFF201335),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Registration Date',
                style: TextStyle(
                  color: Color(0xFFC0C0C0),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              Text(
                widget.data['regdate'],
                style: const TextStyle(
                  color: Color(0xFF201335),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Ticket Type',
                style: TextStyle(
                  color: Color(0xFFC0C0C0),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              Text(
                widget.data['type'],
                style: const TextStyle(
                  color: Color(0xFF201335),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Event Title',
                style: TextStyle(
                  color: Color(0xFFC0C0C0),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              Text(
                widget.data['EventTitle'],
                style: const TextStyle(
                  color: Color(0xFF201335),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Reference',
                style: TextStyle(
                  color: Color(0xFFC0C0C0),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              Text(
                widget.data['Reference'],
                style: const TextStyle(
                  color: Color(0xFF201335),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Status',
                style: TextStyle(
                  color: Color(0xFFC0C0C0),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              Text(
                widget.data['status'] == false
                    ? "• Not Checked-in"
                    : "• Checked-in",
                style: widget.data['status'] == false
                    ? const TextStyle(
                        color: Colors.red,
                        fontSize: 13,
                        fontFamily: 'SatoshiBold',
                      )
                    : const TextStyle(
                        color: Colors.green,
                        fontSize: 13,
                        fontFamily: 'SatoshiBold',
                      ),
              ),
            ],
          ),
          Spacer(),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              
              onPressed: () {
                // Handle button press here
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Color(0xFF201335),
                minimumSize: const Size(181, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: const Text(
                'Check-in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'SatoshiBold', // You can adjust the font weight
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          const Text(
            'Add Notes',
            style: TextStyle(
              color: Color(0xFF201335),
              fontSize: 16,
              fontFamily: 'SatoshiBold', // You can adjust the font weight
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    ));
  }
}
