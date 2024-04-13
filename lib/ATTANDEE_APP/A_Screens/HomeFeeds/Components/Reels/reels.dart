import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/Components/Reels/Components/LocationBottomPanel.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/Components/Reels/ReelsSampleData/Data.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);
  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isFollowing = false;

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return LocationBottomPanel();
      },
    );
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this, // Use 'this' as it now mixes in TickerProvider
      duration: const Duration(seconds: 5),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when not needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: ReelsData.length,
            itemBuilder: (context, index) {
              return _buildReelsPage(ReelsData[index]);
            },
          ),
          Column(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Recommended",
                                style: TextStyle(
                                  color: Color(0xFFF1F1F2),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiBold',
                                  height: 1.1,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              const Text(
                                "|",
                                style: TextStyle(
                                  color: Color(0xFFF1F1F2),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiMedium',
                                  height: 1.1,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              const Text(
                                "Near You",
                                style: TextStyle(
                                  color: Color(0xFFF1F1F2),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiBold',
                                  height: 1.1,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              const Text(
                                "|",
                                style: TextStyle(
                                  color: Color(0xFFF1F1F2),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiMedium',
                                  height: 1.1,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              const Text(
                                "Category",
                                style: TextStyle(
                                  color: Color(0xFFF1F1F2),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiBold',
                                  height: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          width: 55,
                          height: 55,
                          child: SvgPicture.asset(
                            'Assets/Images/Components/step1_bell.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              GestureDetector(
                onTap: _showBottomSheet,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.height * 0.05,
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        50.0), // Set your desired border radius
                    color: const Color(
                        0xFF8DC73F), // Set your desired background color
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.white,
                      ),
                      Text(
                        "Lagos, NG",
                        style: TextStyle(
                          color: Color(0xFFF1F1F2),
                          fontSize: 15,
                          fontFamily: 'SatoshiMedium',
                          height: 1.1,
                        ),
                      ),
                      Icon(
                        Icons.arrow_downward,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReelsPage(Map<String, dynamic> data) {
    return FutureBuilder(
      future: precacheImage(NetworkImage(data['main_image']), context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return _buildCompleteUI(data);
        } else {
          return _buildLoadingIndicator();
        }
      },
    );
  }

  Widget _buildCompleteUI(Map<String, dynamic> data) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Background image
        Image.network(
          data['main_image'],
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent, // Set your desired starting color
                Colors.black.withOpacity(
                    0.8), // Set your desired ending color with opacity
              ],
            ),
          ),
        ),
        // Content
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Container(
                        width: 50,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Color(
                              0xFFDEFBB8), // Set your desired background color
                          // Set your desired border width
                        ),
                        child: Center(
                          child: Text(
                            data['price'],
                            style: const TextStyle(
                              color: Color(0xFF201335),
                              fontSize: 16,
                              fontFamily: 'SatoshiBold',
                              height: 1.1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 291,
                        child: Text(
                          data['title'],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: const Color(0xFFF1F1F2),
                            fontSize: 40,
                            fontFamily: 'SatoshiMedium',
                            height: 1.1,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(
                                    0.25), // Adjust the shadow opacity as needed
                                offset: const Offset(
                                    0, 4), // Adjust the shadow offset as needed
                                blurRadius:
                                    5, // Adjust the shadow blur radius as needed
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Color(0xFF8DC73F),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            data['location'],
                            style: const TextStyle(
                              color: Color(0xFFF1F1F2),
                              fontSize: 16,
                              fontFamily: 'SatoshiBold',
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.date_range,
                            color: Color(0xFF8DC73F),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            data['date'],
                            style: const TextStyle(
                              color: Color(0xFFF1F1F2),
                              fontSize: 16,
                              fontFamily: 'SatoshiBold',
                              height: 1.1,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.timer_outlined,
                            color: Color(0xFF8DC73F),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            data['time'],
                            style: const TextStyle(
                              color: Color(0xFFF1F1F2),
                              fontSize: 16,
                              fontFamily: 'SatoshiBold',
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 186,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "More Information",
                              style: TextStyle(
                                color: Color(0xFF8DC73F),
                                fontSize: 13,
                                fontFamily: 'SatoshiMedium',
                                height: 1.1,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xFF8DC73F),
                              size: 20.0,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Spacer(),
                      const Column(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 40,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '382',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'SatoshiMedium',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "Assets/Images/Icon/share.svg",
                            width: MediaQuery.of(context).size.width * 0.035,
                            height: MediaQuery.of(context).size.height * 0.035,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Text(
                            '382',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'SatoshiMedium',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(
                                2), // Adjust padding for the border width
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(
                                  0xFF8DC73F), // Set your desired background color
                              border: Border.all(
                                width: 2, // Set your desired border width
                              ),
                            ),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.045,
                              backgroundColor: Colors
                                  .transparent, // Set your desired background color
                              backgroundImage: const NetworkImage(
                                'https://i.pinimg.com/736x/98/51/1e/98511ee98a1930b8938e42caf0904d2d.jpg',
                              ), // Set your image URL
                            ),
                          ),
                          Positioned(
                            bottom: MediaQuery.of(context).size.height * 0.04,
                            right: 0,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFollowing = !isFollowing;
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.05,
                                height: 15,
                                // padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: const Color(
                                        0xFF8DC73F), // Set your desired border color
                                    width: 2,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xFF8DC73F),
                                  size: 10,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 90,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildLoadingIndicator() {
    return Center(
      child: RotationTransition(
        turns: _animation,
        child: Transform.scale(
          scale: 0.2,
          child: SvgPicture.asset("Assets/Images/Icon/Vector.svg"),
        ),
      ),
    );
  }
}
