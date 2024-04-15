import 'package:flutter/material.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_AttendeesList/AttendeeDetails.dart';

class UserTile extends StatelessWidget {
  final Map<String, dynamic> data;

  const UserTile({Key? key, required this.data}) : super(key: key);

  void _navigateToUserDetails(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Atnd_Details(data: data),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool status = data['status'] ?? false;

    return GestureDetector(
      onTap: () => _navigateToUserDetails(context),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xFFF1F1F2), // Set the bottom border color
                width: 1.0, // Set the bottom border thickness
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFF8DC73F), // Set the border color
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
                        CircularProgressIndicator(
                          strokeWidth: 2.0,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF8DC73F)),
                        ),
                        // Image
                        Image.network(
                          data['image']!,
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['name']!,
                    style: const TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 18,
                      fontFamily: 'SatoshiBold',
                    ),
                  ),
                  Text(
                    data['role']!,
                    style: const TextStyle(
                      color: Color(0xFF8DC73F),
                      fontSize: 12,
                      fontFamily: 'SatoshiRegular',
                    ),
                  ),
                ],
              ),
              Spacer(),
              // Conditional rendering based on status
              if (status)
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFE1FCEF), // Set the color for true status
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: const Text(
                    'checked-In',
                    style: TextStyle(
                        color: Color(0xFF14804A),
                        fontSize: 11.0,
                        fontFamily: 'Satoshimedium'),
                  ),
                )
              else
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFFAF0F0), // Set the color for false status
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: const Text(
                    'Not Checked In',
                    style: TextStyle(
                        color: Color(0xFFED4F4F),
                        fontSize: 11.0,
                        fontFamily: 'Satoshimedium'),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> attendeesData = [
  {
    "name": "Brian Duckworth",
    "role": "VIP Ticket",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFNkJpg5tIB3DZsMqxgGCyRtSwDuav9LEdbZI06evMasI6tmkPahgI1ftvuA7qbHSsbgg&usqp=CAU",
    "status": true,
    "email": "mikeholmes@gmail.com",
    "regdate": "07/15/2003",
    "type": "FREE",
    "EventTitle": "Unleashing Africa's Potential with Bill Gates",
    "Reference": "STUBGMESG",
  },
  {
    "name": "Mike Holmes",
    "role": "Free Ticket",
    "image":
        "https://fdopportunities.com/wp-content/uploads/2019/12/fdo-bsherman-480x480.jpg",
    "status": false,
    "email": "mikeholmes@gmail.com",
    "regdate": "07/15/2003",
    "type": "FREE",
    "EventTitle": "Unleashing Africa's Potential with Bill Gates",
    "Reference": "STUBGMESG",
  },
  {
    "name": "Kiera Jacob",
    "role": "Free Ticket",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREve715iEbeUts4F4-PJ0vvBvddYPbc9IINfFYlbaoLDG1ySfU3cp4n87lo1OA47HFopM&usqp=CAU",
    "status": true,
    "email": "mikeholmes@gmail.com",
    "regdate": "07/15/2003",
    "type": "FREE",
    "EventTitle": "Unleashing Africa's Potential with Bill Gates",
    "Reference": "STUBGMESG",
  },
  {
    "name": "Brian Duckworth",
    "role": "VIP Ticket",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFNkJpg5tIB3DZsMqxgGCyRtSwDuav9LEdbZI06evMasI6tmkPahgI1ftvuA7qbHSsbgg&usqp=CAU",
    "status": true,
    "email": "mikeholmes@gmail.com",
    "regdate": "07/15/2003",
    "type": "FREE",
    "EventTitle": "Unleashing Africa's Potential with Bill Gates",
    "Reference": "STUBGMESG",
  },
  {
    "name": "Brandon Kelty",
    "role": "VIP Ticket",
    "image":
        "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "status": true,
    "email": "mikeholmes@gmail.com",
    "regdate": "07/15/2003",
    "type": "FREE",
    "EventTitle": "Unleashing Africa's Potential with Bill Gates",
    "Reference": "STUBGMESG",
  },
 {
    "name": "Kiera Jacob",
    "role": "Free Ticket",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREve715iEbeUts4F4-PJ0vvBvddYPbc9IINfFYlbaoLDG1ySfU3cp4n87lo1OA47HFopM&usqp=CAU",
    "status": true,
    "email": "mikeholmes@gmail.com",
    "regdate": "07/15/2003",
    "type": "FREE",
    "EventTitle": "Unleashing Africa's Potential with Bill Gates",
    "Reference": "STUBGMESG",
  },
  {
    "name": "Brian Duckworth",
    "role": "VIP Ticket",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFNkJpg5tIB3DZsMqxgGCyRtSwDuav9LEdbZI06evMasI6tmkPahgI1ftvuA7qbHSsbgg&usqp=CAU",
    "status": true,
    "email": "mikeholmes@gmail.com",
    "regdate": "07/15/2003",
    "type": "FREE",
    "EventTitle": "Unleashing Africa's Potential with Bill Gates",
    "Reference": "STUBGMESG",
  },{
    "name": "Brian Duckworth",
    "role": "VIP Ticket",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFNkJpg5tIB3DZsMqxgGCyRtSwDuav9LEdbZI06evMasI6tmkPahgI1ftvuA7qbHSsbgg&usqp=CAU",
    "status": false,
    "email": "mikeholmes@gmail.com",
    "regdate": "07/15/2003",
    "type": "FREE",
    "EventTitle": "Unleashing Africa's Potential with Bill Gates",
    "Reference": "STUBGMESG",
  },
  {
    "name": "Mike Holmes",
    "role": "Free Ticket",
    "image":
        "https://fdopportunities.com/wp-content/uploads/2019/12/fdo-bsherman-480x480.jpg",
    "status": false,
    "email": "mikeholmes@gmail.com",
    "regdate": "07/15/2003",
    "type": "FREE",
    "EventTitle": "Unleashing Africa's Potential with Bill Gates",
    "Reference": "STUBGMESG",
  },
  
  // Add more data as needed
];
