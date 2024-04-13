import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  final Map<String, dynamic> profile;

  ProfileDetails({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profile['name']),
      ), 
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${profile['name']}'),
            Text('Age: ${profile['age']}'),
            Text('Email: ${profile['email']}'),
            Text('Phone: ${profile['phone']}'),
          ],
        ),
      ),
    );
  }
}