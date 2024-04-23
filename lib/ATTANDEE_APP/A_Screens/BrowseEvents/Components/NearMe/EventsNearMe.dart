import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  @override
  _GoogleMapPageState createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  late GoogleMapController mapController;
  TextEditingController searchController = TextEditingController();
  bool isAll = false;
  bool isForYou = false;
  bool isToday = false;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Google Maps Integration'),
      // ),
      // body: GoogleMap(
      //   onMapCreated: (controller) {
      //     setState(() {
      //       mapController = controller;
      //     });
      //   },
      //   initialCameraPosition: CameraPosition(
      //     target: LatLng(37.7749, -122.4194), // Set the initial map location
      //     zoom: 12.0, // Set the initial zoom level
      //   ),
      //   markers: {
      //     Marker(
      //       markerId: MarkerId('MarkerID'),
      //       position: LatLng(37.7749, -122.4194), // Set the marker position
      //       infoWindow: InfoWindow(
      //         title: 'Marker Title',
      //         snippet: 'Marker Snippet',
      //       ),
      //     ),
      //   },
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("Assets/Images/mapBackground.png")
          )
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height*0.05,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Row(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Center(
                      child: Icon(Icons.arrow_back_ios,
                       color: Color(0xff696D61),
                          size: mQuery.size.height*0.02,),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    width: mQuery.size.width*0.74,
                    height: mQuery.size.height*0.065,
                    padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*0.03
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Color(0xff545454),
                        ),
                        SizedBox(width: mQuery.size.width*0.012,),
                        Expanded(
                          child: TextField(
                            controller: searchController,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiMedium'
                              ),
                              border: InputBorder.none
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
              width: double.infinity,
              height: mQuery.size.height*0.18,
              padding: EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.045
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: mQuery.size.height*0.03,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "2 Events",style: TextStyle(
                           color: Color(0xff696D61),
                          fontSize: 24,
                          fontFamily: 'SatoshiBold'
                        )
                        ),
                        TextSpan(
                            text: " Near You",style: TextStyle(
                            color: Color(0xff8DC73F),
                            fontSize: 24,
                            fontFamily: 'SatoshiBold'
                        )
                        )
                      ]
                    )
                  ),
                  SizedBox(height: mQuery.size.height*0.023,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap : ()
                        {
                          setState(() {
                            isAll = true;
                            isForYou = false;
                            isToday = false;
                          });
                        },
                        child: Container(
                          width: mQuery.size.width*0.26,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                            color: isAll ? Color(0xffDEFBB8) : Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0xffEAEAEA)
                            )
                          ),
                          child: Center(
                            child: Text("All",style: TextStyle(
                              color: Color(0xff696D61)
                            ),),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isAll = false;
                            isForYou = true;
                            isToday = false;
                          });
                        },
                        child: Container(
                          width: mQuery.size.width*0.26,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                            color: isForYou ? Color(0xffDEFBB8) : Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color(0xffEAEAEA)
                              )
                          ),
                          child: Center(
                            child: Text("For You",style: TextStyle(
                                color: Color(0xff696D61)
                            ),),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isAll = false;
                            isForYou = false;
                            isToday = true;
                          });
                        },
                        child: Container(
                          width: mQuery.size.width*0.26,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                            color: isToday ? Color(0xffDEFBB8) : Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color(0xffEAEAEA)
                              )
                          ),
                          child: Center(
                            child: Text("Today",style: TextStyle(
                                color: Color(0xff696D61)
                            ),),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

