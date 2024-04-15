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
      body: Stack(
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
                      SvgPicture.asset('Assets/Images/Components/BottomNavigationBar/stubconnect.svg',),
                      SizedBox(width: mQuery.size.width*0.033,),
                      Text("StubConnect",style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'SatoshiBold',
                          color: Color(0xfff9f9f9)
                      ),),
                      Expanded(child: SizedBox()),
                      SvgPicture.asset('Assets/ORGANISER_APP/Images/O_Profile/bellRing.svg',),
                      SizedBox(width: mQuery.size.width*0.033),
                      SvgPicture.asset('Assets/ORGANISER_APP/Images/O_Profile/circularSetting.svg',),
                    ],
                  ),
                )
              ],
            ),
          ),
          Image.network("https://s3-alpha-sig.figma.com/img/c9f7/1045/ad115c30d06ddda234c6ce0a1f165300?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=C19CODDN4DxR73MsJBW4kBIvopcNKI2grrami3jX2QAypcvoQiuKQXmViuiKxnIipGgukOhkP-eagZ6YCpXoyTUeHLPNmcXRdFwFaYGnV7ZGB-N-zvWAkuDvKcjGvoFPRhI2DpWJenjg~EP5c1RphY9R-BMhV-lfM2Jds~cRtLRvCZjulmadAjEDo~ztoT2VPoD0zsuoKXRMdGijF9~ho66ShM5JmnGs9bsdxZy71DiUBK4rUZf4EfSt2vpqX8B4EgeXArFLoU2Na3tbMV7IspY1pqM-d8vqrphLpFDGaO97ZetgS5FFRWnqMxPwMuqizSdzrSbjow4J9kyh8hS2FQ__",)
        ],
      )
    );
  }
}
