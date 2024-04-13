import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BrowseEventsTile extends StatefulWidget {
  final String eventTitle;
  final String eventDetails;
  final String eventImage;
  final String eventDate;

  const BrowseEventsTile({ 
    Key? key,
    required this.eventTitle,
    required this.eventDetails,
    required this.eventImage,
    required this.eventDate,
  }) : super(key: key);

  @override
  State<BrowseEventsTile> createState() => _BrowseEventsTileState();
}

class _BrowseEventsTileState extends State<BrowseEventsTile> {
  bool isLiked = false; // Track the liked state

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              widget.eventImage,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 25.0),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.eventTitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          widget.eventDetails,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'SatoshiMedium',
                            height: 1.12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 15.0, right: 5.0),
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
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset('Assets/Images/Components/blur.svg'),
                  Text(
                    widget.eventDate,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
