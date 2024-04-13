import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/stubConnect_page.dart';

class ScanUploadPage extends StatefulWidget {
  const ScanUploadPage({super.key});

  @override
  State<ScanUploadPage> createState() => _ScanUploadPageState();
}

class _ScanUploadPageState extends State<ScanUploadPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: mQuery.size.height*0.2,),
          Center(
            child: Container(
              width: mQuery.size.width*0.2,
              height: mQuery.size.height*0.08,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffadd6ad)
              ),
              child: Center(
                child: Container(
                  width: mQuery.size.width*0.06,
                  height: mQuery.size.height*0.015,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff008000)
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: mQuery.size.height*0.02,),
          Center(
            child: Text("Uploading encrypted 3d \n   "
                "       video scan",style: TextStyle(
              color: Color(0xff201335),
              fontSize: 24,
              fontFamily: 'SatoshiBold'
            ),),
          ),
          SizedBox(height: mQuery.size.height*0.02,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mQuery.size.width*0.3
            ),
            child: LinearProgressIndicator(
              minHeight: mQuery.size.height*0.008,
                color: Color(0xff008000),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(height: mQuery.size.height*0.4,),
          Center(
            child: GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return StubConnectPage();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("Assets/Images/Icon/stubguys.png",
                   width: mQuery.size.width*0.1,
                  ),
                  SizedBox(width: mQuery.size.width*0.033,),
                  Text("StubGuys",style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff201335)
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
