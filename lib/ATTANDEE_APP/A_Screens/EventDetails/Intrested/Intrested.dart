import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../EventDetailsV1.dart';
import 'Intrestedpeople.dart';

class Intrested extends StatefulWidget {
  const Intrested({Key? key}) : super(key: key);

  @override
  State<Intrested> createState() => _IntrestedState();
}

class _IntrestedState extends State<Intrested> {
  TextEditingController _selectedButtonController = TextEditingController();
  String _selectedButton = 'Button 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF201335),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the Material Page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EventDetails()),
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        'Assets/Images/Components/step1_back.svg',
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Intrested',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      'Assets/Images/Components/step1_bell.svg',
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: ListView.builder(
                          itemCount: userData.length,
                          itemBuilder: (context, index) {
                            final Map<String, dynamic> user = userData[index];
                            return _buildUserRow(user);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleButtonSelection(String buttonValue) {
    setState(() {
      _selectedButton = buttonValue;
      _selectedButtonController.text = buttonValue;
    });
  }
}

Widget _buildUserRow(Map<String, dynamic> user) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 37.0,
          backgroundImage: NetworkImage(user['image']),
        ),
        const SizedBox(width: 18.0),
        Text(
          user['name'],
          style: const TextStyle(
            height: 1.2,
            fontSize: 17,
            color: Color(0xFF201335),
            fontFamily: 'SatoshiBold',
          ),
        ),
      ],
    ),
  );
}
