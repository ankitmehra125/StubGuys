import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/BrowseEvents/BrowseEvents.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/stubConnect_landing.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/Components/Reels/reels.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/MyTickets/Mytickets.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({Key? key}) : super(key: key);

  @override 
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Reels(),
    const BrowseEvents(),
    StubConnectLanding(),
    const MyTickets(),
    const Profile(),
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
          height: 92.0,
          child: buildBottomNavigationBar(),
        ),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF201335),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF8DC73F),
      unselectedItemColor: Colors.white,
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
            'Assets/Images/Components/BottomNavigationBar/home.svg',
            height: 24,
            color: _currentIndex == 0 ? const Color(0xFF8DC73F) : Colors.white,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'Assets/Images/Components/BottomNavigationBar/search.svg',
            height: 24,
            color: _currentIndex == 1 ? const Color(0xFF8DC73F) : Colors.white,
          ),
          label: 'Browse',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'Assets/Images/Components/BottomNavigationBar/stubconnect.svg',
            height: 24,
            color: _currentIndex == 2 ? const Color(0xFF8DC73F) : Colors.white,
          ),
          label: 'StubConnect',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'Assets/Images/Components/BottomNavigationBar/tickets.svg',
            height: 24,
            color: _currentIndex == 3 ? const Color(0xFF8DC73F) : Colors.white,
          ),
          label: 'Tickets',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'Assets/Images/Components/BottomNavigationBar/profile.svg',
            height: 24,
            color: _currentIndex == 4 ? const Color(0xFF8DC73F) : Colors.white,
          ),
          label: 'Profile',
        ),
      ],
      selectedLabelStyle: const TextStyle(fontSize: 13.0),
      unselectedLabelStyle: const TextStyle(fontSize: 12.0),
    );
  }
}
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Home Page'),
//     );
//   }
// }
//
// class SearchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Search Page'),
//     );
//   }
// }
//
// class AddPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Add Page'),
//     );
//   }
// }
//
// class FavoritesPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Favorites Page'),
//     );
//   }
// }
//
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Profile Page'),
//     );
//   }
// }
