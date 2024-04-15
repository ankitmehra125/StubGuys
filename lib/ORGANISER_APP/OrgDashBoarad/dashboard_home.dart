import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:syncfusion_flutter_charts/charts.dart';

import '../O_Screens/O_AttendeesList/Attendees.dart';
import '../O_Screens/O_Support/O_SupportMain.dart';

class DashBoardHome extends StatefulWidget {
  const DashBoardHome({Key? key}) : super(key: key);

  @override
  State<DashBoardHome> createState() => _DashBoardHomeState();
}

class _DashBoardHomeState extends State<DashBoardHome> {
  var ticket = 12;
  // Define map containing values for UI
  final Map<String, dynamic> uiValues = {
    'reportTitle': "Reports for",
    'organizerName': "StubGuys Organizer",
    'organizerTextColor': Color(0xff8DC73F),
    'organizerDropdownIcon': Icons.keyboard_arrow_down,
    'switchOrganizerText': "Switch organiser",
    'chooseEventText': "Choose Event",
    'showReportsText': "Show Reports for",
    'thisMonthText': "This Month",
    'uiBoxShadowColor': Colors.grey.withOpacity(0.3),
    'uiArrowDropdownIconColor': Color(0xff5E5E5E),
    'uiBoxBackgroundColor': Colors.white,
    'uiBoxBorderRadius': BorderRadius.circular(12),
    'uiBoxPadding': EdgeInsets.symmetric(horizontal: 16),
    'uiBoxHeight': 66.0,
    'uiBoxTextFontFamilyBold': 'SatoshiBold',
    'uiBoxTextFontFamilyMedium': 'SatoshiMedium',
    'uiBoxTextFontSizeRegular': 16.0,
    'uiBoxTextFontSizeSmall': 13.0,
    'uiBoxTextColor': Color(0xff201335),
    'totalPageviews': "62K",
    'ticketsSold': "356",
    'totalRevenue': "\$12.5k",
    'attendees': "350",
  };

  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  late List<_ChartData> data2;
  late List<_ChartData> data3;



  @override
  void initState() {
    data = [
      _ChartData('Tablet', 12),
      _ChartData('Desktop', 15),
      _ChartData('Mobile', 30),
      _ChartData('App', 50),
    ];

    data2 = [
      _ChartData('Paid Search', 12),
      _ChartData('Social', 15),
      _ChartData('Direct', 30),
      _ChartData('Organic Se...', 50),
    ];

    data3 = [
      _ChartData('Maryland', 12),
      _ChartData('California', 15),
      _ChartData('New York', 30),
      _ChartData('Austin', 50),
    ];

    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  double female = 40;
  double male = 30;
  double nonBinary = 20;
  double pns = 10;


  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: uiValues['uiBoxPadding'],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mQuery.size.height * 0.06),
              Row(
                children: [
                  Text(
                    "Dashboard",
                    style: TextStyle(
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff201335),
                      fontSize: 32,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: ()
                      {
                        _showNavigationBottomSheet(context);
                      },
                      child: SvgPicture.asset('Assets/ORGANISER_APP/Icons/Dashboard/hamburger.svg')),
                  SizedBox(width: mQuery.size.width * 0.045),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: badges.Badge(
                      badgeStyle: badges.BadgeStyle(
                        badgeColor: Color(0xff8DC73F)
                      ),
                      badgeContent: Text("3",style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'SatoshiBold',
                        color: Colors.white
                      ),),
                        // position:badges.BadgePosition.bottomEnd(bottom: 2),
                        child: SvgPicture.asset('Assets/ORGANISER_APP/Icons/Dashboard/bell.svg')),
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height * 0.035),
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: uiValues['reportTitle'],
                          style: TextStyle(
                            fontSize: uiValues['uiBoxTextFontSizeRegular'],
                            color: uiValues['uiBoxTextColor'],
                            fontFamily: uiValues['uiBoxTextFontFamilyBold'],
                          ),
                        ),
                        TextSpan(
                          text: " ${uiValues['organizerName']}",
                          style: TextStyle(
                            fontSize: uiValues['uiBoxTextFontSizeRegular'],
                            color: uiValues['organizerTextColor'],
                            fontFamily: uiValues['uiBoxTextFontFamilyBold'],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: mQuery.size.width * 0.01),
                  Icon(
                    uiValues['organizerDropdownIcon'],
                    color: uiValues['organizerTextColor'],
                  )
                ],
              ),
              SizedBox(height: mQuery.size.height * 0.035),
              _buildUIBox(
                uiValues['switchOrganizerText'],
                "All",
                Icons.arrow_drop_down,
              ),
              SizedBox(height: mQuery.size.height * 0.025),
              _buildUIBox(
                uiValues['chooseEventText'],
                "All",
                Icons.arrow_drop_down,
              ),
              SizedBox(height: mQuery.size.height * 0.025),
              _buildUIBox(
                uiValues['showReportsText'],
                uiValues['thisMonthText'],
                Icons.arrow_drop_down,
              ),
              SizedBox(height: mQuery.size.height * 0.045),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: mQuery.size.width * 0.43,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF1F1F2)),
                        borderRadius: uiValues['uiBoxBorderRadius']),
                    child: Column(
                      children: [
                        Text(
                          "Total Pageviews",
                          style: TextStyle(
                              color: uiValues['organizerTextColor'],
                              fontFamily: uiValues['uiBoxTextFontFamilyMedium']),
                        ),
                        Text(
                          uiValues['totalPageviews'],
                          style: TextStyle(
                              fontFamily: uiValues['uiBoxTextFontFamilyMedium'],
                              fontSize: 30),
                        ),
                    ],
                    ),
                  ),
                  Container(
                    width: mQuery.size.width * 0.43,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF1F1F2)),
                        borderRadius: uiValues['uiBoxBorderRadius']),
                    child: Column(
                      children: [
                        Text(
                          "Tickets sold",
                          style: TextStyle(
                              color: uiValues['organizerTextColor'],
                              fontFamily: uiValues['uiBoxTextFontFamilyMedium']),
                        ),
                        Text(
                          uiValues['ticketsSold'],
                          style: TextStyle(
                              fontFamily: uiValues['uiBoxTextFontFamilyMedium'],
                              fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: mQuery.size.width * 0.43,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF1F1F2)),
                        borderRadius: uiValues['uiBoxBorderRadius']),
                    child: Column(
                      children: [
                        Text(
                          "Total Revenue",
                          style: TextStyle(
                              color: uiValues['organizerTextColor'],
                              fontFamily: uiValues['uiBoxTextFontFamilyMedium']),
                        ),
                        Text(
                          uiValues['totalRevenue'],
                          style: TextStyle(
                              fontFamily: uiValues['uiBoxTextFontFamilyMedium'],
                              fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: mQuery.size.width * 0.43,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF1F1F2)),
                        borderRadius: uiValues['uiBoxBorderRadius']),
                    child: Column(
                      children: [
                        Text(
                          "Attendees",
                          style: TextStyle(
                              color: uiValues['organizerTextColor'],
                              fontFamily: uiValues['uiBoxTextFontFamilyMedium']),
                        ),
                        Text(
                          uiValues['attendees'],
                          style: TextStyle(
                              fontFamily: uiValues['uiBoxTextFontFamilyMedium'],
                              fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.045,),
              Container(
                width: double.infinity,
                height: 160,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color(0xffF1F1F2)
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text("Ticket sales",style: TextStyle(
                          fontFamily: 'SatoshiBold',
                          fontSize: 16
                        ),),
                        SizedBox(width: mQuery.size.width*0.023,),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffF1F1F2)
                          ),
                          child: Center(
                            child: Text("$ticket",style: TextStyle(
                               fontFamily: 'SatoshiBold',
                              fontSize: 13
                            ),),
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text("View all",style: TextStyle(
                          color: Color(0xff8DC73F),
                          fontFamily: 'SatoshiBold',
                          fontSize: 13
                        ),)
                      ],
                    ),
                    Divider(color: Color(0xffF1F1F2),),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/OrgDashBoardImages/ticketArrow.svg"),
                        SizedBox(width: mQuery.size.width*0.02,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ticket commission from event (STUBG20023993844)",style: TextStyle(
                              fontSize: 9
                            ),),
                            Row(
                              children: [
                                SvgPicture.asset("assets/images/OrgDashBoardImages/circle.svg"),
                                SizedBox(width: mQuery.size.width*0.012,),
                                Text("\$25.59",style: TextStyle(
                                  color: Color(0xff696D61),
                                  fontSize: 11
                                ),)
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(color: Color(0xffF1F1F2),),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/OrgDashBoardImages/ticketArrow.svg"),
                        SizedBox(width: mQuery.size.width*0.02,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ticket commission from event (STUBG200239935212)",style: TextStyle(
                                fontSize: 9
                            ),),
                            Row(
                              children: [
                                SvgPicture.asset("assets/images/OrgDashBoardImages/circle.svg"),
                                SizedBox(width: mQuery.size.width*0.012,),
                                Text("\$25.59",style: TextStyle(
                                    color: Color(0xff696D61),
                                    fontSize: 11
                                ),)
                              ],
                            ),
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),

              SizedBox(height: mQuery.size.height*0.03,),
              Container(
                width: double.infinity,
                height: 210,
                padding: EdgeInsets.symmetric(
                  horizontal: 10
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Color(0xffF1F1F2)
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Top Events",style: TextStyle(
                            color: Color(0xff201335),
                            fontFamily: 'SatoshiBold',
                            fontSize: 16
                        ),),
                        SizedBox(width: mQuery.size.width*0.023,),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffF1F1F2)
                          ),
                          child: Center(
                            child: Text("$ticket",style: TextStyle(
                                fontFamily: 'SatoshiBold',
                                fontSize: 13
                            ),),
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text("View all",style: TextStyle(
                            color: Color(0xff8DC73F),
                            fontFamily: 'SatoshiBold',
                            fontSize: 13
                        ),)
                      ],
                    ),
                    Divider(
                      color: Color(0xffF1F1F2),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            image: DecorationImage(
                              image: NetworkImage("https://s3-alpha-sig.figma.com/img/23ee/7deb/996f1ac3a6ce276fb684d74803977bf2?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ajG3-xd91SjSsQ-SQgWM5hUc6WwEBw3qwpZGYBnm9XXVtM3sgzGrGpxrwgVBr16SZKlvQAWSw8OL4ViwEpfCOjKTmdVHdgZVbf3E8vEKb0SU340eg3JqeflstWzu1QE~1S5NhlCtCNOpYP-08CRyg8WUz1dh~1Y62RmqAudchOUg-556f2NflOW0iV3eShOQ1FVZwmKcBzinhtNwXPvFDoqdnJW2KMjT8EZ7m7qDGd47R9dRJBnwKhMl29Dowqp-QuaUcuHHv2Ew5d-xjXEgD8yHX~YFKnQUm8-XZYqWa749iq6gwCMdUfD9XMJyVb1Lqv986-Y3q1gHVpWh2f7rFg__")
                            )
                          ),),
                        SizedBox(width: mQuery.size.width*0.02,),
                        Text("Unleashing Africa’s Future with Bill Gates",style: TextStyle(
                          fontSize: 11,
                          color: Color(0xff201335),
                          fontFamily: 'SatoshiMedium'
                        ),)
                      ],
                    ),
                    Divider(color: Color(0xffF1F1F2),),
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 33,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              image: DecorationImage(
                                  image: NetworkImage("https://s3-alpha-sig.figma.com/img/450c/7b6b/c466a1473cb3fbeb976c8e823ead5d3f?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=W5Ta8SAocm7rX2JjMGzzUOEJ4YlHj40ASCMbzbbxZuB98Xs32UCt43mpHBkuwqJXttHCR5zKbYfWvygTkqDmsaVMfiEsgQftn7tEyHD49JFkKA1rB2VYVyvjpm5M7ZCS3KBYRflHHdcISEhEC8J1ZltMDUrvOzMX2v72kKpkZuladhsCdvseylpHIRMJumWpnWwuahFYuz~pTpHcGbLfV-ZbeU4T0vO3Rogos6x39U99GbqYNC1Xbu8y4-qBofg~LIAjrB7WsXxlj~XmU3os4iteyEsYyB9utvEreJS6NKDx2VQ9x6i4M0buypLfPMTVxf0-Qsgmfl-Hi0P6rGsFwg__")
                              )
                          ),),
                        SizedBox(width: mQuery.size.width*0.02,),
                        Text("Stubguys Launch 2023",style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff201335),
                            fontFamily: 'SatoshiMedium'
                        ),)
                      ],
                    ),
                    Divider(color: Color(0xffF1F1F2),),
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 33,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              image: DecorationImage(
                                  image: NetworkImage("https://s3-alpha-sig.figma.com/img/a285/1a43/f76d91d9210d4f912ed47a8312459566?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=XJWakX1ezGJG3SRwP8EG4OKbi1DFFI4sc2UInvgMrHML2OAk2QbU0PR3B7fBXI8Xgwfj2Q2PhufKT-nDtsOzycT~8MoPNB0T5KabAy4yEqM6h2TAmpINmzCACNksKvH4Ai7EpcYrEKW4v1YAkGS~aYA5TmYdZG17pv1WkO3q6L7yRhNmEDmrEwG1LgvzfNAQIJykJ7MLG2R9ndZxwieeaAnHPW9xm9mdSMRM0Vt6GLvtveF-a3uMA90W0MCp6G2162T5IwaKhoiE04drVR7ZNTS89p7yPTDuPH4-lsiTQ97LPah4sxdxh28lG9xlkbFMOXyMnyeyMuw05VfWmqbkfw__")
                              )
                          ),),
                        SizedBox(width: mQuery.size.width*0.02,),
                        Text("Cookathon Event",style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff201335),
                            fontFamily: 'SatoshiMedium'
                        ),)
                      ],
                    ),
                  ],
                ),
              ),


              SizedBox(height: mQuery.size.height*0.03,),
              Container(
                width: double.infinity,
                height: 230,
                padding: EdgeInsets.symmetric(
                    horizontal: 10
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color(0xffF1F1F2)
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gender",style: TextStyle(
                        color: Color(0xff201335),
                        fontFamily: 'SatoshiBold'
                      ),),
                      Divider(
                        color: Color(0xffF1F1F2),
                      ),
                      SizedBox(height: mQuery.size.height*0.07),
                      Center(
                        child: Container(
                          width: 30,
                          height: 30,
                          child: PieChart(
                              PieChartData(
                                sectionsSpace: 0,
                                centerSpaceRadius: 20,
                                  sections: [
                                    PieChartSectionData(
                                        value: female,
                                        title: "Female",
                                        showTitle: false,
                                        color: Color(0xff4C935B),
                                    ),
                                    PieChartSectionData(
                                        value: pns,
                                        title: "Prefer Not to Say",
                                        showTitle: false,
                                        color: Color(0xffE9585A)
                                    ),
                                    PieChartSectionData(
                                        value: nonBinary,
                                        title: "NonBinary",
                                        showTitle: false,
                                        color: Color(0xffF2C86F)
                                    ),
                                    PieChartSectionData(
                                        value: male,
                                        title: "Male",
                                        showTitle: false,
                                        color: Color(0xff0D65AE)
                                    ),
                                  ]
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: mQuery.size.height*0.1),
                      Row(
                        children: [
                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Color(0xff4C935B),
                              shape: BoxShape.circle
                            ),
                          ),
                          SizedBox(width: mQuery.size.width*0.015,),
                          Text("Female",style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff201335),
                            fontFamily: 'SatoshiMedium'
                          ),),
                          SizedBox(width: mQuery.size.width*0.035,),

                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                                color: Color(0xff0D65AE),
                                shape: BoxShape.circle
                            ),
                          ),
                          SizedBox(width: mQuery.size.width*0.015,),
                          Text("Male",style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff201335),
                              fontFamily: 'SatoshiMedium'
                          ),),
                          SizedBox(width: mQuery.size.width*0.035,),

                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                                color: Color(0xffF2C86F),
                                shape: BoxShape.circle
                            ),
                          ),
                          SizedBox(width: mQuery.size.width*0.015,),
                          Text("Non-Binary",style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff201335),
                              fontFamily: 'SatoshiMedium'
                          ),),
                          SizedBox(width: mQuery.size.width*0.035,),

                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                                color: Color(0xffE9585A),
                                shape: BoxShape.circle
                            ),
                          ),
                          SizedBox(width: mQuery.size.width*0.015,),
                          Text("Perfer Not to Say",style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff201335),
                              fontFamily: 'SatoshiMedium'
                          ),),

                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height*0.03,),
              Container(
                width: double.infinity,
                height: 210,
                padding: EdgeInsets.symmetric(
                    horizontal: 10
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color(0xffF1F1F2)
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Device Sessions",style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff201335),
                        fontFamily: 'SatoshiBold'
                      ),),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Container(
                        height: 150,
                        child: SfCartesianChart(
                          primaryXAxis: CategoryAxis(
                            majorGridLines: MajorGridLines(
                              color: Colors.white
                            ),
                            majorTickLines: MajorTickLines(size: 0),
                            labelStyle: TextStyle(
                              color: Colors.black
                            ),// Hide major tick lines
                            labelPlacement: LabelPlacement.betweenTicks,
                            axisLine: AxisLine(
                              color: Colors.white
                            ),// Place labels between ticks
                          ),
                          primaryYAxis: NumericAxis(
                            majorGridLines: MajorGridLines(
                              color: Colors.white
                            ),
                            axisLine: AxisLine(
                              color: Colors.white
                            ),
                            minimum: 0,
                            maximum: 40,
                            interval: 10,
                            labelStyle: TextStyle(
                              color: Colors.blue
                            ),
                            isVisible: false,
                            majorTickLines: MajorTickLines(size: 0), // Hide major tick lines
                            labelFormat: '{value}', // Format labels to show only values
                          ),
                          tooltipBehavior: _tooltip,
                          series: <CartesianSeries<_ChartData, String>>[
                            BarSeries<_ChartData, String>(
                                dataSource: data,
                                xValueMapper: (_ChartData data, _) => data.x,
                                yValueMapper: (_ChartData data, _) => data.y,
                                name: '',
                          pointColorMapper: (data, _) {
                            if (data.x == 'App') {
                              return Color(0xff8DC73F); // Red color for 'App'
                            } else if (data.x == 'Mobile') {
                              return Color(0xffACD674); // Green color for 'Mobile'
                            } else if(data.x == 'Desktop' ){
                              return Color(0xffCDE8A9); // Default color for other data points
                            }
                            else {
                              return Color(0xffF3FFE3);
                            }
                          },
                              isTrackVisible: false,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.03,),
              Container(
                width: double.infinity,
                height: 210,
                padding: EdgeInsets.symmetric(
                    horizontal: 10
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color(0xffF1F1F2)
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Channel Sessions",style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff201335),
                          fontFamily: 'SatoshiBold'
                      ),),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Container(
                        height: 150,
                        child: SfCartesianChart(
                          primaryXAxis: CategoryAxis(
                            majorGridLines: MajorGridLines(color: Colors.white),
                            majorTickLines: MajorTickLines(size: 0),
                            labelStyle: TextStyle(color: Colors.black),
                            labelPlacement: LabelPlacement.betweenTicks,
                            axisLine: AxisLine(color: Colors.white), // Align labels with the start of each bar
                          ),
                          primaryYAxis: NumericAxis(
                            majorGridLines: MajorGridLines(color: Colors.white),
                            axisLine: AxisLine(color: Colors.white),
                            minimum: 0,
                            maximum: 40,
                            interval: 10,
                            labelStyle: TextStyle(color: Colors.blue),
                            isVisible: false,
                            majorTickLines: MajorTickLines(size: 0),
                            labelFormat: '{value}',
                          ),
                          tooltipBehavior: _tooltip,
                          series: <CartesianSeries<_ChartData, String>>[
                            BarSeries<_ChartData, String>(
                              dataSource: data2,
                              xValueMapper: (_ChartData data2, _) => data2.x,
                              yValueMapper: (_ChartData data2, _) => data2.y,

                              pointColorMapper: (data2, _) {
                                if (data2.x == 'Organic Se...') {
                                  return Color(0xff8DC73F); // Red color for 'App'
                                } else if (data2.x == 'Direct') {
                                  return Color(0xffACD674); // Green color for 'Mobile'
                                } else if (data2.x == 'Social') {
                                  return Color(0xffCDE8A9); // Default color for other data points
                                } else {
                                  return Color(0xffF3FFE3);
                                }
                              },
                              isTrackVisible: false,
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.03,),
              Container(
                width: double.infinity,
                height: 210,
                padding: EdgeInsets.symmetric(
                    horizontal: 10
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color(0xffF1F1F2)
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Attendees by Cities",style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff201335),
                          fontFamily: 'SatoshiBold'
                      ),),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Container(
                        height: 150,
                        child: SfCartesianChart(
                          primaryXAxis: CategoryAxis(
                            majorGridLines: MajorGridLines(color: Colors.white),
                            majorTickLines: MajorTickLines(size: 0),
                            labelStyle: TextStyle(color: Colors.black),
                            labelPlacement: LabelPlacement.betweenTicks,
                            axisLine: AxisLine(color: Colors.white), // Align labels with the start of each bar
                          ),
                          primaryYAxis: NumericAxis(
                            majorGridLines: MajorGridLines(color: Colors.white),
                            axisLine: AxisLine(color: Colors.white),
                            minimum: 0,
                            maximum: 40,
                            interval: 10,
                            labelStyle: TextStyle(color: Colors.blue),
                            isVisible: false,
                            majorTickLines: MajorTickLines(size: 0),
                            labelFormat: '{value}',
                          ),
                          tooltipBehavior: _tooltip,
                          series: <CartesianSeries<_ChartData, String>>[
                            BarSeries<_ChartData, String>(
                              dataSource: data3,
                              xValueMapper: (_ChartData data3, _) => data3.x,
                              yValueMapper: (_ChartData data3, _) => data3.y,
                              pointColorMapper: (data3, _) {
                                if (data3.x == 'Austin') {
                                  return Color(0xff8DC73F); // Red color for 'App'
                                } else if (data3.x == 'New York') {
                                  return Color(0xffACD674); // Green color for 'Mobile'
                                } else if (data3.x == 'California') {
                                  return Color(0xffCDE8A9); // Default color for other data points
                                } else {
                                  return Color(0xffF3FFE3);
                                }
                              },
                              isTrackVisible: false,
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),

              SizedBox(height : 40,),

            ],
          ),
        ),
      ),
    );
  }

  // Widget function to build UI boxes
  Widget _buildUIBox(String title, String subtitle, IconData icon) {
    return Container(
      width: double.infinity,
      height: uiValues['uiBoxHeight'],
      padding: uiValues['uiBoxPadding'],
      decoration: BoxDecoration(
        color: uiValues['uiBoxBackgroundColor'],
        borderRadius: uiValues['uiBoxBorderRadius'],
        boxShadow: [
          BoxShadow(
            color: uiValues['uiBoxShadowColor'],
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: uiValues['uiBoxTextFontFamilyBold'],
                  fontSize: uiValues['uiBoxTextFontSizeRegular'],
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: uiValues['uiBoxTextFontSizeSmall'],
                  fontFamily: uiValues['uiBoxTextFontFamilyMedium'],
                  color: uiValues['organizerTextColor'],
                ),
              )
            ],
          ),
          Expanded(child: SizedBox()),
          Icon(
            icon,
            color: uiValues['uiArrowDropdownIconColor'],
          )
        ],
      ),
    );
  }

}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;
}

void _showNavigationBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 15.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 60,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Navigation",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 20,
                      fontFamily: 'SatoshiBold',
                      height: 1.1,
                    ),
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: 25,
                      color: Color(0xFF545454),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Row(
                children: [
                  const Text(
                    "Event Promotion",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFF8DC73F),
                      fontSize: 20,
                      fontFamily: 'SatoshiBold',
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SvgPicture.asset('Assets/Images/copy.svg')
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Row(
                children: [
                  const Text(
                    "Reports",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFF8DC73F),
                      fontSize: 20,
                      fontFamily: 'SatoshiBold',
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SvgPicture.asset('Assets/Images/copy.svg')
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const O_Attendees()),
                  );
                },
                child: const Text(
                  "Attendees",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xFF8DC73F),
                    fontSize: 20,
                    fontFamily: 'SatoshiBold',
                    height: 1.1,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const O_Supportmain()),
                  );
                },
                child: const Text(
                  "Contact Support",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xFF8DC73F),
                    fontSize: 20,
                    fontFamily: 'SatoshiBold',
                    height: 1.1,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

