import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopUpPage extends StatefulWidget {
  const PopUpPage({super.key});

  @override
  State<PopUpPage> createState() => _PopUpPageState();
}

class _PopUpPageState extends State<PopUpPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: mQuery.size.height*0.36,
            color: Color(0xff8DC73F),
            child: Column(
              children: [
                SizedBox(height: mQuery.size.height*0.12,),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                  ),
                  child: Row(
                    children: [
                       SvgPicture.asset('Assets/Images/Components/BottomNavigationBar/stubconnect.svg',)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
