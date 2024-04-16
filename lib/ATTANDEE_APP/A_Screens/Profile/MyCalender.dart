import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatefulWidget {
  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  PageController _pageController = PageController(initialPage: DateTime.now().month - 1);

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text('Events Calendar', style: TextStyle(fontSize: 32, fontFamily: 'SatoshiBold')),
      ),
      body: Column(
        children: [
          SizedBox(height: mQuery.size.height * 0.04),
          Row(
            children: [
              Container(
                width: mQuery.size.width*0.45,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap : ()
                      {
                        showEventViewBottomSheet(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Month View",
                            style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiMedium'
                            ),),
                          SizedBox(width: mQuery.size.width*0.01,),
                          Icon(Icons.keyboard_arrow_down,
                            color: Color(0xff545454),)
                        ],
                      ),
                    ),
                    SizedBox(height: mQuery.size.height*0.007,),
                    Padding(
                      padding: EdgeInsets.only(
                          left: mQuery.size.width*0.045,
                          right: mQuery.size.width*0.02
                      ),
                      child: Divider(),
                    )
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                width: mQuery.size.width*0.45,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("2023",
                          style: TextStyle(
                              color: Color(0xff696D61),
                              fontFamily: 'SatoshiBold'
                          ),),
                        SizedBox(width: mQuery.size.width*0.01,),
                        Icon(Icons.keyboard_arrow_down,
                          color: Color(0xff545454),)
                      ],
                    ),
                    SizedBox(height: mQuery.size.height*0.007,),
                    Padding(
                      padding: EdgeInsets.only(
                          left: mQuery.size.width*0.02,
                          right: mQuery.size.width*0.045
                      ),
                      child: Divider(),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: mQuery.size.height*0.035,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i <= 12; i++)
                  MonthButton(month: _getMonthName(i), page: i - 1, isSelected: i == _focusedDay.month),
              ],
            ),
          ),
          SizedBox(height: mQuery.size.height*0.05,),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: 12,
              onPageChanged: (int index) {
                setState(() {
                  _focusedDay = DateTime(DateTime.now().year, index + 1, 1);
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return CalendarWidget(DateTime(DateTime.now().year, index + 1, 1), _selectedDay, _onDaySelected);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
    });
  }

  String _getMonthName(int monthNumber) {
    switch (monthNumber) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }
}

class MonthButton extends StatelessWidget {
  final String month;
  final int page;
  final bool isSelected;

  const MonthButton({required this.month, required this.page, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final _calendarController = context.findAncestorStateOfType<_MyCalendarState>()!._pageController;
        _calendarController.animateToPage(page, duration: Duration(milliseconds: 100), curve: Curves.easeInOut);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          month,
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'SatoshiBold',
            color: isSelected ? Color(0xff8DC73F) : Color(0xffF1F1F2),
          ),
        ),
      ),
    );
  }
}

void showEventViewBottomSheet(BuildContext context) {
  var mQuery = MediaQuery.of(context);
  bool isWeeklySelected = true; // Set Weekly as default selected
  bool isMonthlySelected = false;

  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            width: double.infinity,
            height: mQuery.size.height * 0.45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: mQuery.size.height * 0.012),
                Padding(
                  padding: EdgeInsets.only(left: mQuery.size.width * 0.045),
                  child: Text(
                    'Events view',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xff201335),
                    ),
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.04),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isWeeklySelected = true;
                      isMonthlySelected = false;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: mQuery.size.height * 0.075,
                    color: isWeeklySelected ? Color(0xffF9F9F9) : Colors.white,
                    child: Center(
                      child: Text("Weekly",style: TextStyle(
                        fontFamily: 'SatoshiMedium',
                        fontSize: isWeeklySelected ? 24 : 16
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.03),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isWeeklySelected = false;
                      isMonthlySelected = true;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: mQuery.size.height * 0.075,
                    color: isMonthlySelected ? Color(0xffF9F9F9) : Colors.white,
                    child: Center(
                      child: Text("Monthly",style: TextStyle(
                        fontFamily: 'SatoshiMedium',
                        fontSize: isMonthlySelected ? 24 : 16
                      ),),
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  margin: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  decoration: BoxDecoration(
                    color: Color(0xff8DC73F),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "Search",
                      style: TextStyle(
                        color: Color(0xffF1F1F2),
                        fontFamily: 'SatoshiBold',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.023)
              ],
            ),
          );
        },
      );
    },
  );
}


class CalendarWidget extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime? selectedDay;
  final Function(DateTime, DateTime) onDaySelected;

  const CalendarWidget(this.focusedDay, this.selectedDay, this.onDaySelected);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      headerVisible: false,
      daysOfWeekStyle: DaysOfWeekStyle(
          weekendStyle: TextStyle(color: Color(0xffD4D4D4), fontSize: 12, fontFamily: 'SatoshiMedium'),
          weekdayStyle: TextStyle(color: Color(0xffD4D4D4), fontSize: 12, fontFamily: 'SatoshiMedium')),
      calendarStyle: CalendarStyle(
        outsideDaysVisible: true,
        outsideTextStyle: TextStyle(color: Color(0xffD4D4D4), fontFamily: 'SatsohiBold'),
        selectedDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff8DC73F),
        ),
        defaultTextStyle: TextStyle(
          color: Color(0xff201335),
          fontFamily: 'SatoshiBold'
        ), // Default text color
        todayDecoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xff7BEA7B)), // Today's background color
        weekendTextStyle: TextStyle(
            color: Color(0xff201335),
            fontFamily: 'SatoshiBold'
        ), // Weekend text color
      ),
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: focusedDay,
      selectedDayPredicate: (day) {
        return isSameDay(selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        onDaySelected(selectedDay, focusedDay);
      },
    );
  }
}
