import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Posts extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String eventDate;
  Posts({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.eventDate,
  });

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(27.0),
            child: Image(
              image: AssetImage(widget.imageUrl),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.26,
              // Adjust the height as needed
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                child: Stack(
                  children: [
                    Container(
                      width: 85,
                      height: 31,
                      child:
                          SvgPicture.asset('Assets/Images/Components/blur.svg'),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          widget.eventDate,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  // Adjust the radius as needed
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: 'SatoshiRegular',
                            ),
                          ),
                          Text(
                            widget.subtitle,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'SatoshiBold',
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 25.0, right: 5.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isLiked = !isLiked; // Toggle the liked state
                            });
                          },
                          child: Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            color: isLiked ? Colors.red : Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
