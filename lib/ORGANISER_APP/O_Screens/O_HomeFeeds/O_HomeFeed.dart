import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/BrowseEvents.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/MyTickets/Mytickets.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/O_DashboardHome.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/ManageOrders/O_ManageOrders.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/O_MainProfile.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_QR/QR.dart';
import 'package:stub_guys/ORGANISER_APP/OrgDashBoarad/dashboard_home.dart';
import '../CreateEvents/Components/Step4_HashTagFileds.dart/LocationFeatureField.dart';
import '../CreateEvents/Process/CE_Step1.dart';

// ignore: camel_case_types
class O_HomeFeed extends StatefulWidget {
  const O_HomeFeed({Key? key}) : super(key: key);

  @override
  State<O_HomeFeed> createState() => _O_HomeFeedState();
}

// ignore: camel_case_types
class _O_HomeFeedState extends State<O_HomeFeed> {
  int _currentIndex = 4;

  final List<Widget> _pages = [
    // const O_Dashboard(),
    const DashBoardHome(),
    QRViewExample(),
    const CE_Step1(),
    const ManageOrders(),
    const O_Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Close the app when the back button is pressed
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: SizedBox(
          height: 80.0,
          child: buildBottomNavigationBar(),
        ),
      ),
    );
  }

  SingleChildScrollView buildBottomNavigationBar() {
    return SingleChildScrollView(
      child: BottomNavigationBar(
        backgroundColor: const Color(0xFFDEFBB8),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF8DC73F),
        unselectedItemColor: const Color(0xFF696D61),
        iconSize: 30.0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Assets/ORGANISER_APP/Images/HomeFeed/home.svg',
              width: 26,
              height: 26,
              color: _currentIndex == 0
                  ? const Color(0xFF8DC73F)
                  : const Color(0xFF545454),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Assets/ORGANISER_APP/Images/HomeFeed/ticket.svg',
              width: 24,
              height: 24,
              color: _currentIndex == 1
                  ? const Color(0xFF8DC73F)
                  : const Color(0xFF545454),
            ),
            label: 'Scan',
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Color(0xFF8DC73F),
              radius: 24, // Adjust the radius as needed
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Assets/ORGANISER_APP/Images/HomeFeed/orders.svg',
              width: 26,
              height: 26,
              color: _currentIndex == 3
                  ? const Color(0xFF8DC73F)
                  : const Color(0xFF545454),
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Assets/ORGANISER_APP/Images/HomeFeed/more.svg',
              width: 26,
              height: 26,
              color: _currentIndex == 4
                  ? const Color(0xFF8DC73F)
                  : const Color(0xFF545454),
            ),
            label: 'More',
          ),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 13.0),
        unselectedLabelStyle: const TextStyle(fontSize: 12.0),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Page'),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Page'),
    );
  }
}

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Add Page'),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Favorites Page'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Page'),
    );
  }
}
