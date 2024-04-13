import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StubConnectPage extends StatefulWidget {
  const StubConnectPage({super.key});

  @override
  State<StubConnectPage> createState() => _StubConnectPageState();
}

class _StubConnectPageState extends State<StubConnectPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
       body: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               width: double.infinity,
               height: mQuery.size.height*0.18,
               padding: EdgeInsets.only(
                 left: mQuery.size.width*0.05
               ),
               color: Color(0xff8DC73F),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: mQuery.size.height*0.1,),
                   Row(
                     children: [
                       SvgPicture.asset("Assets/Images/Icon/spin.svg",
                         width: mQuery.size.width*0.08,
                       ),
                       SizedBox(width: mQuery.size.width*0.04,),
                       Text("StubConnect",style: TextStyle(
                         color: Color(0xffF9F9F9),
                         fontSize: 24,
                         fontFamily: 'SatoshiMedium'
                       ),)
                     ],
                   ),
                 ],
               ),
             ),
             SizedBox(height: mQuery.size.height*0.06,),
             Container(
               width: mQuery.size.width*0.85,
               height: mQuery.size.height*0.42,
               decoration: BoxDecoration(
                 color: Color(0xffFCFCFC),
                 // color: Colors.yellow,
                 shape: BoxShape.circle
               ),
               child: Center(
                 child: Container(
                   width: mQuery.size.width*0.42,
                   height: mQuery.size.height*0.3,
                   decoration: BoxDecoration(
                     color: Color(0xffDEFBB8),
                     shape: BoxShape.circle
                   ),
                   child: Center(
                     child: Container(
                       width: mQuery.size.width*0.2,
                       height: mQuery.size.height*0.2,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: NetworkImage("https://s3-alpha-sig.figma.com/img/9014/0a82/ee42c76d3cc6414bdd585f90ea40d66e?Expires=1710115200&Key-Pair-Id=APKAQ4GOS"
                               "FWCVNEHN3O4&Signature=A~0D4~0CvyCp45db860xS06ig3f-F~aKaSG5ilJ~OMi"
                               "7j6Nd381jul7bhPDHO1H0XDMV5S-S-IwLNG0VT2uz63yL~QkAQFT6sINg4oRSDY"
                               "cShxfpVqkezNxFu5g~pwVskgFxbydwNbAHwc5PB9ezEHvNiesyQXt9Doi7vGWJOY"
                               "pO4O7FvvJa8LhRpSTgoX6ibFl7y~tqboCl3a7ZImRyjTjiAD4RzqPt~zSPPqXo7C"
                               "QFtnhQUQMr3HwavP3e7j8JfpljE3~eD~oQfZ6dn0uPZwLnOnCXrKtH4HYBRE82v"
                               "KMrpOsye6P28qotks9uGI61WMiSY6xpmAqOYhv-GMX20Q__")
                         )
                       ),
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(height: mQuery.size.height*0.1,),
             Center(
               child: Container(
                 width: mQuery.size.width*0.7,
                 height: mQuery.size.height*0.07,
                 decoration: BoxDecoration(
                   color: Color(0xff201335),
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Center(
                   child: Text("Browse Events",style: TextStyle(
                     color: Color(0xffF1F1F2),
                     fontFamily: 'SatoshiBold',
                     fontSize: 16
                   ),),
                 ),
               ),
             ),
         
             SizedBox(height: mQuery.size.height*0.06,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   width: mQuery.size.width*0.14,
                   height: mQuery.size.height*0.1,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Color(0xffF1F1F2)
                   ),
                   child: Center(
                     child: Icon(Icons.close,
                       color: Color(0xffFF3D00),
                     ),
                   ),
                 ),
                 SizedBox(width: mQuery.size.width*0.045,),
                 Container(
                   width: mQuery.size.width*0.17,
                   height: mQuery.size.height*0.1,
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Color(0xffF1F1F2)
                   ),
                   child: Center(
                     child: SvgPicture.asset("Assets/Images/messageIcon.svg",
                       width: mQuery.size.width*0.065,)
                   ),
                 ),
                 SizedBox(width: mQuery.size.width*0.045,),
                 Container(
                   width: mQuery.size.width*0.14,
                   height: mQuery.size.height*0.1,
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Color(0xffF1F1F2)
                   ),
                   child: Center(
                     child: SvgPicture.asset("Assets/Images/punchIcon.svg",
                      width: mQuery.size.width*0.05,)
                   ),
                 ),
               ],
             )
           ],
         ),
       ),
    );
  }
}
